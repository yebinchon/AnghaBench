
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned short* pcmreg; unsigned short* unchained; unsigned short* chained; } ;
struct TYPE_6__ {TYPE_1__ ad18xx; } ;
struct snd_ac97 {int page_mutex; int reg_mutex; TYPE_4__* bus; TYPE_2__ spec; } ;
struct TYPE_8__ {TYPE_3__* ops; } ;
struct TYPE_7__ {int (* write ) (struct snd_ac97*,int ,unsigned short) ;} ;


 int AC97_AD_SERIAL_CFG ;
 int AC97_PCM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned short snd_ac97_read_cache (struct snd_ac97*,int ) ;
 int stub1 (struct snd_ac97*,int ,unsigned short) ;
 int stub2 (struct snd_ac97*,int ,unsigned short) ;
 int stub3 (struct snd_ac97*,int ,unsigned short) ;

__attribute__((used)) static int snd_ac97_ad18xx_update_pcm_bits(struct snd_ac97 *ac97, int codec, unsigned short mask, unsigned short value)
{
 int change;
 unsigned short old, new, cfg;

 mutex_lock(&ac97->page_mutex);
 old = ac97->spec.ad18xx.pcmreg[codec];
 new = (old & ~mask) | (value & mask);
 change = old != new;
 if (change) {
  mutex_lock(&ac97->reg_mutex);
  cfg = snd_ac97_read_cache(ac97, AC97_AD_SERIAL_CFG);
  ac97->spec.ad18xx.pcmreg[codec] = new;

  ac97->bus->ops->write(ac97, AC97_AD_SERIAL_CFG,
     (cfg & ~0x7000) |
     ac97->spec.ad18xx.unchained[codec] | ac97->spec.ad18xx.chained[codec]);

  ac97->bus->ops->write(ac97, AC97_PCM, new);

  ac97->bus->ops->write(ac97, AC97_AD_SERIAL_CFG,
     cfg | 0x7000);
  mutex_unlock(&ac97->reg_mutex);
 }
 mutex_unlock(&ac97->page_mutex);
 return change;
}
