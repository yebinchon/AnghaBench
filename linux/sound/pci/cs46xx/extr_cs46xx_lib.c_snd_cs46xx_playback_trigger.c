
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_cs46xx_pcm {TYPE_3__* pcm_channel; } ;
struct snd_cs46xx {unsigned int play_ctl; int reg_lock; } ;
struct TYPE_7__ {int unlinked; TYPE_2__* pcm_reader_scb; } ;
struct TYPE_6__ {int address; } ;
struct TYPE_5__ {int periods; struct snd_cs46xx_pcm* private_data; } ;


 int BA1_PCTL ;
 int CS46XX_FRAGS ;
 int EINVAL ;
 int ENXIO ;
 int SCBVolumeCtrl ;




 int cs46xx_dsp_pcm_link (struct snd_cs46xx*,TYPE_3__*) ;
 int cs46xx_dsp_pcm_unlink (struct snd_cs46xx*,TYPE_3__*) ;
 unsigned int snd_cs46xx_peek (struct snd_cs46xx*,int) ;
 int snd_cs46xx_playback_transfer (struct snd_pcm_substream*) ;
 int snd_cs46xx_poke (struct snd_cs46xx*,int,unsigned int) ;
 struct snd_cs46xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_cs46xx_playback_trigger(struct snd_pcm_substream *substream,
           int cmd)
{
 struct snd_cs46xx *chip = snd_pcm_substream_chip(substream);

 int result = 0;







 switch (cmd) {
 case 130:
 case 131:
  spin_lock(&chip->reg_lock);
  if (substream->runtime->periods != CS46XX_FRAGS)
   snd_cs46xx_playback_transfer(substream);
  { unsigned int tmp;
  tmp = snd_cs46xx_peek(chip, BA1_PCTL);
  tmp &= 0x0000ffff;
  snd_cs46xx_poke(chip, BA1_PCTL, chip->play_ctl | tmp);
  }
  spin_unlock(&chip->reg_lock);

  break;
 case 129:
 case 128:
  spin_lock(&chip->reg_lock);
  { unsigned int tmp;
  tmp = snd_cs46xx_peek(chip, BA1_PCTL);
  tmp &= 0x0000ffff;
  snd_cs46xx_poke(chip, BA1_PCTL, tmp);
  }
  spin_unlock(&chip->reg_lock);

  break;
 default:
  result = -EINVAL;
  break;
 }

 return result;
}
