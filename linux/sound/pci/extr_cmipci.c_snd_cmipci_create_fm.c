
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_opl3 {int dummy; } ;
struct cmipci {int chip_version; long iobase; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int CM_FMSEL_388 ;
 unsigned int CM_FMSEL_3C8 ;
 unsigned int CM_FMSEL_3E0 ;
 unsigned int CM_FMSEL_3E8 ;
 unsigned int CM_FMSEL_MASK ;
 unsigned int CM_FM_EN ;
 long CM_REG_FM_PCI ;
 int CM_REG_LEGACY_CTRL ;
 int CM_REG_MISC_CTRL ;
 int EIO ;
 int OPL3_HW_OPL3 ;
 int dev_err (int ,char*,...) ;
 int snd_cmipci_clear_bit (struct cmipci*,int ,unsigned int) ;
 unsigned int snd_cmipci_read (struct cmipci*,int ) ;
 int snd_cmipci_set_bit (struct cmipci*,int ,unsigned int) ;
 int snd_cmipci_write (struct cmipci*,int ,unsigned int) ;
 int snd_opl3_create (TYPE_1__*,long,long,int ,int,struct snd_opl3**) ;
 int snd_opl3_hwdep_new (struct snd_opl3*,int ,int,int *) ;

__attribute__((used)) static int snd_cmipci_create_fm(struct cmipci *cm, long fm_port)
{
 long iosynth;
 unsigned int val;
 struct snd_opl3 *opl3;
 int err;

 if (!fm_port)
  goto disable_fm;

 if (cm->chip_version >= 39) {

  iosynth = cm->iobase + CM_REG_FM_PCI;
  err = snd_opl3_create(cm->card, iosynth, iosynth + 2,
          OPL3_HW_OPL3, 1, &opl3);
 } else {
  err = -EIO;
 }
 if (err < 0) {

  val = snd_cmipci_read(cm, CM_REG_LEGACY_CTRL) & ~CM_FMSEL_MASK;
  iosynth = fm_port;
  switch (iosynth) {
  case 0x3E8: val |= CM_FMSEL_3E8; break;
  case 0x3E0: val |= CM_FMSEL_3E0; break;
  case 0x3C8: val |= CM_FMSEL_3C8; break;
  case 0x388: val |= CM_FMSEL_388; break;
  default:
   goto disable_fm;
  }
  snd_cmipci_write(cm, CM_REG_LEGACY_CTRL, val);

  snd_cmipci_set_bit(cm, CM_REG_MISC_CTRL, CM_FM_EN);

  if (snd_opl3_create(cm->card, iosynth, iosynth + 2,
        OPL3_HW_OPL3, 0, &opl3) < 0) {
   dev_err(cm->card->dev,
    "no OPL device at %#lx, skipping...\n",
    iosynth);
   goto disable_fm;
  }
 }
 if ((err = snd_opl3_hwdep_new(opl3, 0, 1, ((void*)0))) < 0) {
  dev_err(cm->card->dev, "cannot create OPL3 hwdep\n");
  return err;
 }
 return 0;

 disable_fm:
 snd_cmipci_clear_bit(cm, CM_REG_LEGACY_CTRL, CM_FMSEL_MASK);
 snd_cmipci_clear_bit(cm, CM_REG_MISC_CTRL, CM_FM_EN);
 return 0;
}
