
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct viadev {unsigned int tbl_entries; int in_interrupt; unsigned int lastpos; unsigned int hwptr_done; scalar_t__ fragsize; } ;
struct via82xx {scalar_t__ revision; int reg_lock; TYPE_1__* card; } ;
struct snd_pcm_substream {TYPE_2__* runtime; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_4__ {struct viadev* private_data; } ;
struct TYPE_3__ {int dev; } ;


 int OFFSET_CURR_COUNT ;
 int OFFSET_STATUS ;
 int SNDRV_PCM_TRIGGER_START ;
 int VIADEV_REG (struct viadev*,int ) ;
 int VIA_REG_STAT_ACTIVE ;
 int VIA_REG_STAT_EOL ;
 int VIA_REG_STAT_FLAG ;
 scalar_t__ VIA_REV_8251 ;
 int bytes_to_frames (TYPE_2__*,unsigned int) ;
 unsigned int calc_linear_pos (struct via82xx*,struct viadev*,unsigned int,unsigned int) ;
 int dev_dbg (int ,char*,unsigned int,unsigned int) ;
 int inb (int ) ;
 unsigned int inl (int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 struct via82xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_via82xx_pcm_trigger (struct snd_pcm_substream*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t snd_via8233_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct via82xx *chip = snd_pcm_substream_chip(substream);
 struct viadev *viadev = substream->runtime->private_data;
 unsigned int idx, count, res;
 int status;

 if (snd_BUG_ON(!viadev->tbl_entries))
  return 0;

 spin_lock(&chip->reg_lock);
 count = inl(VIADEV_REG(viadev, OFFSET_CURR_COUNT));
 status = viadev->in_interrupt;
 if (!status)
  status = inb(VIADEV_REG(viadev, OFFSET_STATUS));



 if (chip->revision == VIA_REV_8251 && (status & VIA_REG_STAT_EOL))
  snd_via82xx_pcm_trigger(substream, SNDRV_PCM_TRIGGER_START);

 if (!(status & VIA_REG_STAT_ACTIVE)) {
  res = 0;
  goto unlock;
 }
 if (count & 0xffffff) {
  idx = count >> 24;
  if (idx >= viadev->tbl_entries) {





   res = viadev->lastpos;
  } else {
   count &= 0xffffff;
   res = calc_linear_pos(chip, viadev, idx, count);
  }
 } else {
  res = viadev->hwptr_done;
  if (!viadev->in_interrupt) {
   if (status & VIA_REG_STAT_EOL) {
    res = 0;
   } else
    if (status & VIA_REG_STAT_FLAG) {
     res += viadev->fragsize;
    }
  }
 }
unlock:
 viadev->lastpos = res;
 spin_unlock(&chip->reg_lock);

 return bytes_to_frames(substream->runtime, res);
}
