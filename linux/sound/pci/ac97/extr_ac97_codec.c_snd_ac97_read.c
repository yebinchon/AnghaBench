
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ac97 {TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {unsigned short (* read ) (struct snd_ac97*,unsigned short) ;} ;


 int snd_ac97_valid_reg (struct snd_ac97*,unsigned short) ;
 unsigned short stub1 (struct snd_ac97*,unsigned short) ;

unsigned short snd_ac97_read(struct snd_ac97 *ac97, unsigned short reg)
{
 if (!snd_ac97_valid_reg(ac97, reg))
  return 0;
 return ac97->bus->ops->read(ac97, reg);
}
