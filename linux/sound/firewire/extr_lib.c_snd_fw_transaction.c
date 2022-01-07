
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fw_unit {int device; } ;
struct fw_device {int generation; int max_speed; int node_id; int card; } ;


 int EAGAIN ;
 int EIO ;
 int ERROR_RETRY_DELAY_MS ;
 unsigned int FW_FIXED_GENERATION ;
 unsigned int FW_GENERATION_MASK ;
 unsigned int FW_QUIET ;
 int RCODE_COMPLETE ;
 int RCODE_GENERATION ;
 int dev_err (int *,char*,int ) ;
 struct fw_device* fw_parent_device (struct fw_unit*) ;
 int fw_rcode_string (int) ;
 int fw_run_transaction (int ,int,int ,int,int ,int ,void*,size_t) ;
 int msleep (int ) ;
 scalar_t__ rcode_is_permanent_error (int) ;
 int smp_rmb () ;

int snd_fw_transaction(struct fw_unit *unit, int tcode,
         u64 offset, void *buffer, size_t length,
         unsigned int flags)
{
 struct fw_device *device = fw_parent_device(unit);
 int generation, rcode, tries = 0;

 generation = flags & FW_GENERATION_MASK;
 for (;;) {
  if (!(flags & FW_FIXED_GENERATION)) {
   generation = device->generation;
   smp_rmb();
  }
  rcode = fw_run_transaction(device->card, tcode,
        device->node_id, generation,
        device->max_speed, offset,
        buffer, length);

  if (rcode == RCODE_COMPLETE)
   return 0;

  if (rcode == RCODE_GENERATION && (flags & FW_FIXED_GENERATION))
   return -EAGAIN;

  if (rcode_is_permanent_error(rcode) || ++tries >= 3) {
   if (!(flags & FW_QUIET))
    dev_err(&unit->device,
     "transaction failed: %s\n",
     fw_rcode_string(rcode));
   return -EIO;
  }

  msleep(ERROR_RETRY_DELAY_MS);
 }
}
