
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;
struct fm801 {int cap_ctrl; int cap_pos; int cap_count; size_t cap_size; int reg_lock; } ;
typedef int snd_pcm_uframes_t ;


 int CAP_COUNT ;
 int FM801_IRQ_CAPTURE ;
 int FM801_START ;
 int IRQ_STATUS ;
 int bytes_to_frames (int ,size_t) ;
 int fm801_readw (struct fm801*,int ) ;
 struct fm801* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t snd_fm801_capture_pointer(struct snd_pcm_substream *substream)
{
 struct fm801 *chip = snd_pcm_substream_chip(substream);
 size_t ptr;

 if (!(chip->cap_ctrl & FM801_START))
  return 0;
 spin_lock(&chip->reg_lock);
 ptr = chip->cap_pos + (chip->cap_count - 1) - fm801_readw(chip, CAP_COUNT);
 if (fm801_readw(chip, IRQ_STATUS) & FM801_IRQ_CAPTURE) {
  ptr += chip->cap_count;
  ptr %= chip->cap_size;
 }
 spin_unlock(&chip->reg_lock);
 return bytes_to_frames(substream->runtime, ptr);
}
