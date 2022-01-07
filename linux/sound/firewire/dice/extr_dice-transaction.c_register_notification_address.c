
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {int offset; } ;
struct snd_dice {int owner_generation; TYPE_3__* unit; TYPE_2__ notification_handler; } ;
struct fw_device {int generation; TYPE_1__* card; } ;
typedef scalar_t__ __be64 ;
struct TYPE_7__ {int device; } ;
struct TYPE_5__ {scalar_t__ node_id; } ;


 int EAGAIN ;
 int EBUSY ;
 int ENOMEM ;
 int FW_FIXED_GENERATION ;
 int GFP_KERNEL ;
 int GLOBAL_OWNER ;
 int OWNER_NODE_SHIFT ;
 int OWNER_NO_OWNER ;
 int SND_DICE_ADDR_TYPE_GLOBAL ;
 int TCODE_LOCK_COMPARE_SWAP ;
 scalar_t__ cpu_to_be64 (int) ;
 int dev_err (int *,char*) ;
 struct fw_device* fw_parent_device (TYPE_3__*) ;
 int get_subaddr (struct snd_dice*,int ,int ) ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc (int,int ) ;
 int msleep (int) ;
 int smp_rmb () ;
 int snd_fw_transaction (TYPE_3__*,int ,int ,scalar_t__*,int,int) ;

__attribute__((used)) static int register_notification_address(struct snd_dice *dice, bool retry)
{
 struct fw_device *device = fw_parent_device(dice->unit);
 __be64 *buffer;
 unsigned int retries;
 int err;

 retries = (retry) ? 3 : 0;

 buffer = kmalloc(2 * 8, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 for (;;) {
  buffer[0] = cpu_to_be64(OWNER_NO_OWNER);
  buffer[1] = cpu_to_be64(
   ((u64)device->card->node_id << OWNER_NODE_SHIFT) |
   dice->notification_handler.offset);

  dice->owner_generation = device->generation;
  smp_rmb();
  err = snd_fw_transaction(dice->unit, TCODE_LOCK_COMPARE_SWAP,
      get_subaddr(dice,
           SND_DICE_ADDR_TYPE_GLOBAL,
           GLOBAL_OWNER),
      buffer, 2 * 8,
      FW_FIXED_GENERATION |
       dice->owner_generation);
  if (err == 0) {

   if (buffer[0] == cpu_to_be64(OWNER_NO_OWNER))
    break;

   if (buffer[0] == buffer[1])
    break;

   dev_err(&dice->unit->device,
    "device is already in use\n");
   err = -EBUSY;
  }
  if (err != -EAGAIN || retries-- > 0)
   break;

  msleep(20);
 }

 kfree(buffer);

 if (err < 0)
  dice->owner_generation = -1;

 return err;
}
