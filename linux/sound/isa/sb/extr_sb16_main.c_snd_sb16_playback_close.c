
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int open_lock; int mode; int * playback_substream; } ;
struct snd_pcm_substream {int dummy; } ;


 int SB_MODE_PLAYBACK ;
 struct snd_sb* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_sb16_csp_playback_close (struct snd_sb*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sb16_playback_close(struct snd_pcm_substream *substream)
{
 unsigned long flags;
 struct snd_sb *chip = snd_pcm_substream_chip(substream);

 snd_sb16_csp_playback_close(chip);
 spin_lock_irqsave(&chip->open_lock, flags);
 chip->playback_substream = ((void*)0);
 chip->mode &= ~SB_MODE_PLAYBACK;
 spin_unlock_irqrestore(&chip->open_lock, flags);
 return 0;
}
