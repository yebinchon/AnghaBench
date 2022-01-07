
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;
struct fm801 {int ply_ctrl; int ply_pos; int ply_count; size_t ply_size; int reg_lock; } ;
typedef int snd_pcm_uframes_t ;


 int FM801_IRQ_PLAYBACK ;
 int FM801_START ;
 int IRQ_STATUS ;
 int PLY_COUNT ;
 int bytes_to_frames (int ,size_t) ;
 int fm801_readw (struct fm801*,int ) ;
 struct fm801* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t snd_fm801_playback_pointer(struct snd_pcm_substream *substream)
{
 struct fm801 *chip = snd_pcm_substream_chip(substream);
 size_t ptr;

 if (!(chip->ply_ctrl & FM801_START))
  return 0;
 spin_lock(&chip->reg_lock);
 ptr = chip->ply_pos + (chip->ply_count - 1) - fm801_readw(chip, PLY_COUNT);
 if (fm801_readw(chip, IRQ_STATUS) & FM801_IRQ_PLAYBACK) {
  ptr += chip->ply_count;
  ptr %= chip->ply_size;
 }
 spin_unlock(&chip->reg_lock);
 return bytes_to_frames(substream->runtime, ptr);
}
