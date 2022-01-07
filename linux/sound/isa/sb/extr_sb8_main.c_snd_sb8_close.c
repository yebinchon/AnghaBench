
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int open_lock; int mode; int open; int * capture_substream; int * playback_substream; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;


 int SB_MODE_CAPTURE ;
 int SB_MODE_PLAYBACK ;
 int SB_OPEN_PCM ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 struct snd_sb* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sb8_close(struct snd_pcm_substream *substream)
{
 unsigned long flags;
 struct snd_sb *chip = snd_pcm_substream_chip(substream);

 chip->playback_substream = ((void*)0);
 chip->capture_substream = ((void*)0);
 spin_lock_irqsave(&chip->open_lock, flags);
 chip->open &= ~SB_OPEN_PCM;
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  chip->mode &= ~SB_MODE_PLAYBACK;
 else
  chip->mode &= ~SB_MODE_CAPTURE;
 spin_unlock_irqrestore(&chip->open_lock, flags);
 return 0;
}
