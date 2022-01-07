
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via82xx {scalar_t__ chip_type; int ac97_secondary; int port; int * playback_volume_c; int ** playback_volume; struct pci_dev* pci; TYPE_1__* card; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int GPI_INTR ;
 scalar_t__ TYPE_VIA686 ;
 scalar_t__ TYPE_VIA8233A ;
 int VIAREG (struct via82xx*,int ) ;
 unsigned char VIA_ACLINK_C00_READY ;
 int VIA_ACLINK_CTRL ;
 unsigned char VIA_ACLINK_CTRL_ENABLE ;
 unsigned char VIA_ACLINK_CTRL_INIT ;
 unsigned char VIA_ACLINK_CTRL_RESET ;
 unsigned char VIA_ACLINK_CTRL_SYNC ;
 int VIA_ACLINK_STAT ;
 int VIA_FM_NMI_CTRL ;
 int VIA_FUNC_ENABLE ;
 unsigned int VIA_REG_AC97_BUSY ;
 unsigned int VIA_REG_AC97_CODEC_ID_SECONDARY ;
 unsigned int VIA_REG_AC97_CODEC_ID_SHIFT ;
 unsigned int VIA_REG_AC97_READ ;
 unsigned int VIA_REG_AC97_SECONDARY_VALID ;
 scalar_t__ VIA_REG_OFS_PLAYBACK_VOLUME_L ;
 int dev_err (int ,char*,unsigned int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int outb (int ,scalar_t__) ;
 int outl (int ,int ) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int,int,int *) ;
 int pci_read_config_byte (struct pci_dev*,int,unsigned char*) ;
 int pci_write_config_byte (struct pci_dev*,int,unsigned char) ;
 int schedule_timeout_uninterruptible (int) ;
 unsigned int snd_via82xx_codec_xread (struct via82xx*) ;
 int snd_via82xx_codec_xwrite (struct via82xx*,unsigned int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int snd_via82xx_chip_init(struct via82xx *chip)
{
 unsigned int val;
 unsigned long end_time;
 unsigned char pval;






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
 if (chip->chip_type == TYPE_VIA686) {

  pci_write_config_byte(chip->pci, VIA_FM_NMI_CTRL, 0);

  outl(0, VIAREG(chip, GPI_INTR));
 }

 if (chip->chip_type != TYPE_VIA686) {



  struct pci_dev *pci;
  pci = pci_get_device(0x1106, 0x3068, ((void*)0));
  if (pci) {
   unsigned char data;
   pci_read_config_byte(pci, 0x44, &data);
   pci_write_config_byte(pci, 0x44, data | 0x40);
   pci_dev_put(pci);
  }
 }

 if (chip->chip_type != TYPE_VIA8233A) {
  int i, idx;
  for (idx = 0; idx < 4; idx++) {
   unsigned long port = chip->port + 0x10 * idx;
   for (i = 0; i < 2; i++) {
    chip->playback_volume[idx][i]=chip->playback_volume_c[i];
    outb(chip->playback_volume_c[i],
         port + VIA_REG_OFS_PLAYBACK_VOLUME_L + i);
   }
  }
 }

 return 0;
}
