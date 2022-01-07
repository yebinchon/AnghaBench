
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ addr; } ;
struct viadev {unsigned int tbl_entries; TYPE_1__ table; } ;
struct via82xx_modem {int reg_lock; } ;
struct snd_pcm_substream {TYPE_2__* runtime; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_4__ {struct viadev* private_data; } ;


 int OFFSET_CURR_COUNT ;
 int OFFSET_CURR_PTR ;
 int OFFSET_STATUS ;
 int VIADEV_REG (struct viadev*,int ) ;
 int VIA_REG_STAT_ACTIVE ;
 int bytes_to_frames (TYPE_2__*,unsigned int) ;
 unsigned int calc_linear_pos (struct via82xx_modem*,struct viadev*,unsigned int,unsigned int) ;
 int inb (int ) ;
 int inl (int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 struct via82xx_modem* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t snd_via686_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct via82xx_modem *chip = snd_pcm_substream_chip(substream);
 struct viadev *viadev = substream->runtime->private_data;
 unsigned int idx, ptr, count, res;

 if (snd_BUG_ON(!viadev->tbl_entries))
  return 0;
 if (!(inb(VIADEV_REG(viadev, OFFSET_STATUS)) & VIA_REG_STAT_ACTIVE))
  return 0;

 spin_lock(&chip->reg_lock);
 count = inl(VIADEV_REG(viadev, OFFSET_CURR_COUNT)) & 0xffffff;



 ptr = inl(VIADEV_REG(viadev, OFFSET_CURR_PTR));
 if (ptr <= (unsigned int)viadev->table.addr)
  idx = 0;
 else
  idx = ((ptr - (unsigned int)viadev->table.addr) / 8 - 1) %
   viadev->tbl_entries;
 res = calc_linear_pos(chip, viadev, idx, count);
 spin_unlock(&chip->reg_lock);

 return bytes_to_frames(substream->runtime, res);
}
