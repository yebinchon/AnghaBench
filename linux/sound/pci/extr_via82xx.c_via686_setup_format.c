
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viadev {int reg_offset; } ;
struct via82xx {int dummy; } ;
struct snd_pcm_runtime {scalar_t__ format; int channels; } ;


 int OFFSET_TYPE ;
 scalar_t__ SNDRV_PCM_FORMAT_S16_LE ;
 int VIADEV_REG (struct viadev*,int ) ;
 int VIA_REG_TYPE_16BIT ;
 int VIA_REG_TYPE_AUTOSTART ;
 int VIA_REG_TYPE_INT_EOL ;
 int VIA_REG_TYPE_INT_FLAG ;
 int VIA_REG_TYPE_INT_LSAMPLE ;
 int VIA_REG_TYPE_STEREO ;
 int outb (int,int ) ;
 int snd_via82xx_channel_reset (struct via82xx*,struct viadev*) ;
 int snd_via82xx_set_table_ptr (struct via82xx*,struct viadev*) ;

__attribute__((used)) static void via686_setup_format(struct via82xx *chip, struct viadev *viadev,
    struct snd_pcm_runtime *runtime)
{
 snd_via82xx_channel_reset(chip, viadev);

 snd_via82xx_set_table_ptr(chip, viadev);
 outb(VIA_REG_TYPE_AUTOSTART |
      (runtime->format == SNDRV_PCM_FORMAT_S16_LE ? VIA_REG_TYPE_16BIT : 0) |
      (runtime->channels > 1 ? VIA_REG_TYPE_STEREO : 0) |
      ((viadev->reg_offset & 0x10) == 0 ? VIA_REG_TYPE_INT_LSAMPLE : 0) |
      VIA_REG_TYPE_INT_EOL |
      VIA_REG_TYPE_INT_FLAG, VIADEV_REG(viadev, OFFSET_TYPE));
}
