
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_substream {int number; } ;
struct snd_ice1712 {int ** playback_con_substream_ds; int reg_lock; } ;


 int ICEDS (struct snd_ice1712*,int ) ;
 int INTMASK ;
 int inw (int ) ;
 int outw (int,int ) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ice1712_playback_ds_close(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 u32 tmp;

 spin_lock_irq(&ice->reg_lock);
 tmp = inw(ICEDS(ice, INTMASK)) | (3 << (substream->number * 2));
 outw(tmp, ICEDS(ice, INTMASK));
 spin_unlock_irq(&ice->reg_lock);
 ice->playback_con_substream_ds[substream->number] = ((void*)0);
 return 0;
}
