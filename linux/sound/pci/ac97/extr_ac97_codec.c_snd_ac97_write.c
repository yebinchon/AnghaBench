
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ac97 {int id; TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* write ) (struct snd_ac97*,unsigned short,unsigned short) ;} ;


 unsigned short AC97_HEADPHONE ;
 int AC97_ID_ALC100 ;
 unsigned short AC97_MASTER ;
 unsigned short AC97_RESET ;
 int snd_ac97_valid_reg (struct snd_ac97*,unsigned short) ;
 int stub1 (struct snd_ac97*,unsigned short,unsigned short) ;
 int stub2 (struct snd_ac97*,unsigned short,unsigned short) ;

void snd_ac97_write(struct snd_ac97 *ac97, unsigned short reg, unsigned short value)
{
 if (!snd_ac97_valid_reg(ac97, reg))
  return;
 if ((ac97->id & 0xffffff00) == AC97_ID_ALC100) {

  if (reg == AC97_MASTER || reg == AC97_HEADPHONE)
   ac97->bus->ops->write(ac97, AC97_RESET, 0);
 }
 ac97->bus->ops->write(ac97, reg, value);
}
