
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {unsigned int ctl; } ;
struct snd_cs46xx {int reg_lock; TYPE_1__ capt; } ;


 int BA1_CCTL ;
 int EINVAL ;




 unsigned int snd_cs46xx_peek (struct snd_cs46xx*,int ) ;
 int snd_cs46xx_poke (struct snd_cs46xx*,int ,unsigned int) ;
 struct snd_cs46xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_cs46xx_capture_trigger(struct snd_pcm_substream *substream,
          int cmd)
{
 struct snd_cs46xx *chip = snd_pcm_substream_chip(substream);
 unsigned int tmp;
 int result = 0;

 spin_lock(&chip->reg_lock);
 switch (cmd) {
 case 130:
 case 131:
  tmp = snd_cs46xx_peek(chip, BA1_CCTL);
  tmp &= 0xffff0000;
  snd_cs46xx_poke(chip, BA1_CCTL, chip->capt.ctl | tmp);
  break;
 case 129:
 case 128:
  tmp = snd_cs46xx_peek(chip, BA1_CCTL);
  tmp &= 0xffff0000;
  snd_cs46xx_poke(chip, BA1_CCTL, tmp);
  break;
 default:
  result = -EINVAL;
  break;
 }
 spin_unlock(&chip->reg_lock);

 return result;
}
