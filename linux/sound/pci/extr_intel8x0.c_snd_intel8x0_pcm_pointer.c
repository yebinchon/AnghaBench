
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;
struct intel8x0 {int reg_lock; scalar_t__ inside_vm; } ;
struct ichdev {unsigned int position; size_t last_pos; size_t pos_shift; size_t fragsize1; size_t size; scalar_t__ roff_picb; scalar_t__ reg_offset; } ;
typedef int snd_pcm_uframes_t ;


 scalar_t__ ICH_REG_OFF_CIV ;
 int bytes_to_frames (int ,size_t) ;
 struct ichdev* get_ichdev (struct snd_pcm_substream*) ;
 int igetbyte (struct intel8x0*,scalar_t__) ;
 size_t igetword (struct intel8x0*,scalar_t__) ;
 struct intel8x0* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int) ;

__attribute__((used)) static snd_pcm_uframes_t snd_intel8x0_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct intel8x0 *chip = snd_pcm_substream_chip(substream);
 struct ichdev *ichdev = get_ichdev(substream);
 size_t ptr1, ptr;
 int civ, timeout = 10;
 unsigned int position;

 spin_lock(&chip->reg_lock);
 do {
  civ = igetbyte(chip, ichdev->reg_offset + ICH_REG_OFF_CIV);
  ptr1 = igetword(chip, ichdev->reg_offset + ichdev->roff_picb);
  position = ichdev->position;
  if (ptr1 == 0) {
   udelay(10);
   continue;
  }
  if (civ != igetbyte(chip, ichdev->reg_offset + ICH_REG_OFF_CIV))
   continue;







  if (chip->inside_vm)
   break;
  if (ptr1 == igetword(chip, ichdev->reg_offset + ichdev->roff_picb))
   break;
 } while (timeout--);
 ptr = ichdev->last_pos;
 if (ptr1 != 0) {
  ptr1 <<= ichdev->pos_shift;
  ptr = ichdev->fragsize1 - ptr1;
  ptr += position;
  if (ptr < ichdev->last_pos) {
   unsigned int pos_base, last_base;
   pos_base = position / ichdev->fragsize1;
   last_base = ichdev->last_pos / ichdev->fragsize1;



   if (pos_base == last_base)
    ptr = ichdev->last_pos;
  }
 }
 ichdev->last_pos = ptr;
 spin_unlock(&chip->reg_lock);
 if (ptr >= ichdev->size)
  return 0;
 return bytes_to_frames(substream->runtime, ptr);
}
