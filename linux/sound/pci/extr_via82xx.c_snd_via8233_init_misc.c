
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct via82xx {scalar_t__ chip_type; int pci; struct snd_kcontrol** dxs_controls; TYPE_7__* card; int ac97; } ;
struct TYPE_9__ {int subdevice; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct snd_ctl_elem_id {int iface; int name; } ;
typedef int sid ;
struct TYPE_11__ {int dev; } ;
struct TYPE_10__ {int index; } ;


 int ENOMEM ;
 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 scalar_t__ TYPE_VIA8233A ;
 int VIA8233_SPDIF_CTRL ;
 unsigned char VIA8233_SPDIF_DX3 ;
 unsigned char VIA8233_SPDIF_SLOT_1011 ;
 unsigned char VIA8233_SPDIF_SLOT_MASK ;
 scalar_t__ ac97_can_spdif (int ) ;
 int dev_info (int ,char*) ;
 int memset (struct snd_ctl_elem_id*,int ,int) ;
 int pci_read_config_byte (int ,int ,unsigned char*) ;
 int pci_write_config_byte (int ,int ,unsigned char) ;
 int snd_ctl_add (TYPE_7__*,struct snd_kcontrol*) ;
 int snd_ctl_find_id (TYPE_7__*,struct snd_ctl_elem_id*) ;
 struct snd_kcontrol* snd_ctl_new1 (TYPE_2__*,struct via82xx*) ;
 TYPE_2__ snd_via8233_capture_source ;
 TYPE_2__ snd_via8233_dxs3_spdif_control ;
 TYPE_2__ snd_via8233_dxs_volume_control ;
 TYPE_2__ snd_via8233_pcmdxs_volume_control ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_via8233_init_misc(struct via82xx *chip)
{
 int i, err, caps;
 unsigned char val;

 caps = chip->chip_type == TYPE_VIA8233A ? 1 : 2;
 for (i = 0; i < caps; i++) {
  snd_via8233_capture_source.index = i;
  err = snd_ctl_add(chip->card, snd_ctl_new1(&snd_via8233_capture_source, chip));
  if (err < 0)
   return err;
 }
 if (ac97_can_spdif(chip->ac97)) {
  err = snd_ctl_add(chip->card, snd_ctl_new1(&snd_via8233_dxs3_spdif_control, chip));
  if (err < 0)
   return err;
 }
 if (chip->chip_type != TYPE_VIA8233A) {



  struct snd_ctl_elem_id sid;
  memset(&sid, 0, sizeof(sid));
  strcpy(sid.name, "PCM Playback Volume");
  sid.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
  if (! snd_ctl_find_id(chip->card, &sid)) {
   dev_info(chip->card->dev,
     "Using DXS as PCM Playback\n");
   err = snd_ctl_add(chip->card, snd_ctl_new1(&snd_via8233_pcmdxs_volume_control, chip));
   if (err < 0)
    return err;
  }
  else
  {
   for (i = 0; i < 4; ++i) {
    struct snd_kcontrol *kctl;

    kctl = snd_ctl_new1(
     &snd_via8233_dxs_volume_control, chip);
    if (!kctl)
     return -ENOMEM;
    kctl->id.subdevice = i;
    err = snd_ctl_add(chip->card, kctl);
    if (err < 0)
     return err;
    chip->dxs_controls[i] = kctl;
   }
  }
 }

 pci_read_config_byte(chip->pci, VIA8233_SPDIF_CTRL, &val);
 val = (val & ~VIA8233_SPDIF_SLOT_MASK) | VIA8233_SPDIF_SLOT_1011;
 val &= ~VIA8233_SPDIF_DX3;
 pci_write_config_byte(chip->pci, VIA8233_SPDIF_CTRL, val);

 return 0;
}
