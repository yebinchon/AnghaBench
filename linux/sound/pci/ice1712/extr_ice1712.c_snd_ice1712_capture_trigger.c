
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_pcm_substream {int dummy; } ;
struct snd_ice1712 {int reg_lock; } ;


 int EINVAL ;
 int ICE1712_IREG_CAP_CTRL ;
 int SNDRV_PCM_TRIGGER_START ;
 int SNDRV_PCM_TRIGGER_STOP ;
 int snd_ice1712_read (struct snd_ice1712*,int ) ;
 int snd_ice1712_write (struct snd_ice1712*,int ,int) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_ice1712_capture_trigger(struct snd_pcm_substream *substream,
           int cmd)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 int result = 0;
 u8 tmp;

 spin_lock(&ice->reg_lock);
 tmp = snd_ice1712_read(ice, ICE1712_IREG_CAP_CTRL);
 if (cmd == SNDRV_PCM_TRIGGER_START) {
  tmp |= 1;
 } else if (cmd == SNDRV_PCM_TRIGGER_STOP) {
  tmp &= ~1;
 } else {
  result = -EINVAL;
 }
 snd_ice1712_write(ice, ICE1712_IREG_CAP_CTRL, tmp);
 spin_unlock(&ice->reg_lock);
 return result;
}
