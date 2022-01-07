
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int reg_lock; } ;
struct snd_pcm_substream {int runtime; } ;
typedef int snd_pcm_uframes_t ;


 int ALS4K_GCRA4_FIFO2_CURRENT_ADDR ;
 int bytes_to_frames (int ,unsigned int) ;
 unsigned int snd_als4k_gcr_read (struct snd_sb*,int ) ;
 struct snd_sb* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t snd_als4000_capture_pointer(struct snd_pcm_substream *substream)
{
 struct snd_sb *chip = snd_pcm_substream_chip(substream);
 unsigned int result;

 spin_lock(&chip->reg_lock);
 result = snd_als4k_gcr_read(chip, ALS4K_GCRA4_FIFO2_CURRENT_ADDR);
 spin_unlock(&chip->reg_lock);
 result &= 0xffff;
 return bytes_to_frames( substream->runtime, result );
}
