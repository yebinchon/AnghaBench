
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int offset; } ;
struct snd_dice {int owner_generation; int unit; TYPE_2__ notification_handler; } ;
struct fw_device {TYPE_1__* card; } ;
typedef int __be64 ;
struct TYPE_3__ {scalar_t__ node_id; } ;


 int FW_FIXED_GENERATION ;
 int FW_QUIET ;
 int GFP_KERNEL ;
 int GLOBAL_OWNER ;
 int OWNER_NODE_SHIFT ;
 int OWNER_NO_OWNER ;
 int SND_DICE_ADDR_TYPE_GLOBAL ;
 int TCODE_LOCK_COMPARE_SWAP ;
 int cpu_to_be64 (int) ;
 struct fw_device* fw_parent_device (int ) ;
 int get_subaddr (struct snd_dice*,int ,int ) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int snd_fw_transaction (int ,int ,int ,int *,int,int) ;

__attribute__((used)) static void unregister_notification_address(struct snd_dice *dice)
{
 struct fw_device *device = fw_parent_device(dice->unit);
 __be64 *buffer;

 buffer = kmalloc(2 * 8, GFP_KERNEL);
 if (buffer == ((void*)0))
  return;

 buffer[0] = cpu_to_be64(
  ((u64)device->card->node_id << OWNER_NODE_SHIFT) |
  dice->notification_handler.offset);
 buffer[1] = cpu_to_be64(OWNER_NO_OWNER);
 snd_fw_transaction(dice->unit, TCODE_LOCK_COMPARE_SWAP,
      get_subaddr(dice, SND_DICE_ADDR_TYPE_GLOBAL,
           GLOBAL_OWNER),
      buffer, 2 * 8, FW_QUIET |
      FW_FIXED_GENERATION | dice->owner_generation);

 kfree(buffer);

 dice->owner_generation = -1;
}
