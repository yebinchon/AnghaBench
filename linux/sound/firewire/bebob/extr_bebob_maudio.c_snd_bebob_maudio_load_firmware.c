
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fw_unit {int device; } ;
struct fw_device {int max_speed; int generation; int node_id; int card; } ;
typedef int __le32 ;


 int BEBOB_ADDR_REG_REQ ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int INFO_OFFSET_SW_DATE ;
 int MAUDIO_BOOTLOADER_CUE1 ;
 int MAUDIO_BOOTLOADER_CUE2 ;
 int MAUDIO_BOOTLOADER_CUE3 ;
 int RCODE_COMPLETE ;
 int TCODE_WRITE_BLOCK_REQUEST ;
 int cpu_to_le32 (int ) ;
 int dev_err (int *,char*) ;
 struct fw_device* fw_parent_device (struct fw_unit*) ;
 int fw_run_transaction (int ,int ,int ,int ,int ,int ,int *,int) ;
 int kfree (int *) ;
 int * kmalloc_array (int,int,int ) ;
 int snd_bebob_read_block (struct fw_unit*,int ,int*,int) ;

int snd_bebob_maudio_load_firmware(struct fw_unit *unit)
{
 struct fw_device *device = fw_parent_device(unit);
 int err, rcode;
 u64 date;
 __le32 *cues;


 err = snd_bebob_read_block(unit, INFO_OFFSET_SW_DATE,
       &date, sizeof(u64));
 if (err < 0)
  return err;




 if (date < 0x3230303730343031LL) {
  dev_err(&unit->device,
   "Use firmware version 5058 or later\n");
  return -ENXIO;
 }

 cues = kmalloc_array(3, sizeof(*cues), GFP_KERNEL);
 if (!cues)
  return -ENOMEM;

 cues[0] = cpu_to_le32(MAUDIO_BOOTLOADER_CUE1);
 cues[1] = cpu_to_le32(MAUDIO_BOOTLOADER_CUE2);
 cues[2] = cpu_to_le32(MAUDIO_BOOTLOADER_CUE3);

 rcode = fw_run_transaction(device->card, TCODE_WRITE_BLOCK_REQUEST,
       device->node_id, device->generation,
       device->max_speed, BEBOB_ADDR_REG_REQ,
       cues, 3 * sizeof(*cues));
 kfree(cues);
 if (rcode != RCODE_COMPLETE) {
  dev_err(&unit->device,
   "Failed to send a cue to load firmware\n");
  err = -EIO;
 }

 return err;
}
