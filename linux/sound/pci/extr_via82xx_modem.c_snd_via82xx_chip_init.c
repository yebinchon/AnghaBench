
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via82xx_modem {int ac97_secondary; TYPE_1__* card; int pci; } ;
struct TYPE_2__ {int dev; } ;


 int GPI_INTR ;
 int VIAREG (struct via82xx_modem*,int ) ;
 unsigned char VIA_ACLINK_C00_READY ;
 int VIA_ACLINK_CTRL ;
 unsigned char VIA_ACLINK_CTRL_ENABLE ;
 unsigned char VIA_ACLINK_CTRL_INIT ;
 unsigned char VIA_ACLINK_CTRL_RESET ;
 unsigned char VIA_ACLINK_CTRL_SYNC ;
 int VIA_ACLINK_STAT ;
 int VIA_MC97_CTRL ;
 unsigned char VIA_MC97_CTRL_INIT ;
 unsigned int VIA_REG_AC97_BUSY ;
 unsigned int VIA_REG_AC97_CODEC_ID_SECONDARY ;
 unsigned int VIA_REG_AC97_CODEC_ID_SHIFT ;
 unsigned int VIA_REG_AC97_READ ;
 unsigned int VIA_REG_AC97_SECONDARY_VALID ;
 int dev_err (int ,char*,unsigned int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int outl (int ,int ) ;
 int pci_read_config_byte (int ,int,unsigned char*) ;
 int pci_write_config_byte (int ,int,unsigned char) ;
 int schedule_timeout_uninterruptible (int) ;
 unsigned int snd_via82xx_codec_xread (struct via82xx_modem*) ;
 int snd_via82xx_codec_xwrite (struct via82xx_modem*,unsigned int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int snd_via82xx_chip_init(struct via82xx_modem *chip)
{
 unsigned int val;
 unsigned long end_time;
 unsigned char pval;

 pci_read_config_byte(chip->pci, VIA_MC97_CTRL, &pval);
 if((pval & VIA_MC97_CTRL_INIT) != VIA_MC97_CTRL_INIT) {
  pci_write_config_byte(chip->pci, 0x44, pval|VIA_MC97_CTRL_INIT);
  udelay(100);
 }

 pci_read_config_byte(chip->pci, VIA_ACLINK_STAT, &pval);
 if (! (pval & VIA_ACLINK_C00_READY)) {

  pci_write_config_byte(chip->pci, VIA_ACLINK_CTRL,
          VIA_ACLINK_CTRL_ENABLE |
          VIA_ACLINK_CTRL_RESET |
          VIA_ACLINK_CTRL_SYNC);
  udelay(100);

  pci_write_config_byte(chip->pci, VIA_ACLINK_CTRL, 0x00);
  udelay(100);







  pci_write_config_byte(chip->pci, VIA_ACLINK_CTRL, VIA_ACLINK_CTRL_INIT);
  udelay(100);
 }

 pci_read_config_byte(chip->pci, VIA_ACLINK_CTRL, &pval);
 if ((pval & VIA_ACLINK_CTRL_INIT) != VIA_ACLINK_CTRL_INIT) {

  pci_write_config_byte(chip->pci, VIA_ACLINK_CTRL, VIA_ACLINK_CTRL_INIT);
  udelay(100);
 }


 end_time = jiffies + msecs_to_jiffies(750);
 do {
  pci_read_config_byte(chip->pci, VIA_ACLINK_STAT, &pval);
  if (pval & VIA_ACLINK_C00_READY)
   break;
  schedule_timeout_uninterruptible(1);
 } while (time_before(jiffies, end_time));

 if ((val = snd_via82xx_codec_xread(chip)) & VIA_REG_AC97_BUSY)
  dev_err(chip->card->dev,
   "AC'97 codec is not ready [0x%x]\n", val);

 snd_via82xx_codec_xwrite(chip, VIA_REG_AC97_READ |
     VIA_REG_AC97_SECONDARY_VALID |
     (VIA_REG_AC97_CODEC_ID_SECONDARY << VIA_REG_AC97_CODEC_ID_SHIFT));
 end_time = jiffies + msecs_to_jiffies(750);
 snd_via82xx_codec_xwrite(chip, VIA_REG_AC97_READ |
     VIA_REG_AC97_SECONDARY_VALID |
     (VIA_REG_AC97_CODEC_ID_SECONDARY << VIA_REG_AC97_CODEC_ID_SHIFT));
 do {
  if ((val = snd_via82xx_codec_xread(chip)) & VIA_REG_AC97_SECONDARY_VALID) {
   chip->ac97_secondary = 1;
   goto __ac97_ok2;
  }
  schedule_timeout_uninterruptible(1);
 } while (time_before(jiffies, end_time));


      __ac97_ok2:




 outl(0, VIAREG(chip, GPI_INTR));

 return 0;
}
