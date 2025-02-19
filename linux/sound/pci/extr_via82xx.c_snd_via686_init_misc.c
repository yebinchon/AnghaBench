
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via82xx {unsigned char old_legacy; unsigned char old_legacy_cfg; scalar_t__ revision; int mpu_port_saved; unsigned char legacy_saved; unsigned char legacy_cfg_saved; int pci; TYPE_1__* card; int rmidi; int * mpu_res; } ;
struct TYPE_2__ {int dev; } ;


 int MPU401_HW_VIA686A ;
 int MPU401_INFO_INTEGRATED ;
 int MPU401_INFO_IRQ_HOOK ;
 int VIA_FUNC_ENABLE ;
 unsigned char VIA_FUNC_ENABLE_GAME ;
 unsigned char VIA_FUNC_ENABLE_MIDI ;
 unsigned char VIA_FUNC_MIDI_IRQMASK ;
 unsigned char VIA_FUNC_MIDI_PNP ;
 int VIA_PNP_CONTROL ;
 scalar_t__ VIA_REV_686_H ;
 int dev_warn (int ,char*,int) ;
 int mpu_port ;
 int pci_resource_start (int ,int) ;
 int pci_write_config_byte (int ,int ,unsigned char) ;
 int pci_write_config_dword (int ,int,int) ;
 int * request_region (int,int,char*) ;
 scalar_t__ snd_mpu401_uart_new (TYPE_1__*,int ,int ,int,int,int,int *) ;
 int snd_via686_create_gameport (struct via82xx*,unsigned char*) ;

__attribute__((used)) static int snd_via686_init_misc(struct via82xx *chip)
{
 unsigned char legacy, legacy_cfg;
 int rev_h = 0;

 legacy = chip->old_legacy;
 legacy_cfg = chip->old_legacy_cfg;
 legacy |= VIA_FUNC_MIDI_IRQMASK;
 legacy &= ~VIA_FUNC_ENABLE_GAME;
 if (chip->revision >= VIA_REV_686_H) {
  rev_h = 1;
  if (mpu_port >= 0x200) {
   mpu_port &= 0xfffc;
   pci_write_config_dword(chip->pci, 0x18, mpu_port | 0x01);



  } else {
   mpu_port = pci_resource_start(chip->pci, 2);
  }
 } else {
  switch (mpu_port) {
  case 0x300:
  case 0x310:
  case 0x320:
  case 0x330:
   legacy_cfg &= ~(3 << 2);
   legacy_cfg |= (mpu_port & 0x0030) >> 2;
   break;
  default:
   if (legacy & VIA_FUNC_ENABLE_MIDI)
    mpu_port = 0x300 + ((legacy_cfg & 0x000c) << 2);
   break;
  }
 }
 if (mpu_port >= 0x200 &&
     (chip->mpu_res = request_region(mpu_port, 2, "VIA82xx MPU401"))
     != ((void*)0)) {
  if (rev_h)
   legacy |= VIA_FUNC_MIDI_PNP;
  legacy |= VIA_FUNC_ENABLE_MIDI;
 } else {
  if (rev_h)
   legacy &= ~VIA_FUNC_MIDI_PNP;
  legacy &= ~VIA_FUNC_ENABLE_MIDI;
  mpu_port = 0;
 }

 pci_write_config_byte(chip->pci, VIA_FUNC_ENABLE, legacy);
 pci_write_config_byte(chip->pci, VIA_PNP_CONTROL, legacy_cfg);
 if (chip->mpu_res) {
  if (snd_mpu401_uart_new(chip->card, 0, MPU401_HW_VIA686A,
     mpu_port, MPU401_INFO_INTEGRATED |
     MPU401_INFO_IRQ_HOOK, -1,
     &chip->rmidi) < 0) {
   dev_warn(chip->card->dev,
     "unable to initialize MPU-401 at 0x%lx, skipping\n",
     mpu_port);
   legacy &= ~VIA_FUNC_ENABLE_MIDI;
  } else {
   legacy &= ~VIA_FUNC_MIDI_IRQMASK;
  }
  pci_write_config_byte(chip->pci, VIA_FUNC_ENABLE, legacy);
 }

 snd_via686_create_gameport(chip, &legacy);






 return 0;
}
