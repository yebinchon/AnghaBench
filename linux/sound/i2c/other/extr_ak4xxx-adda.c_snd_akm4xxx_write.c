
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* unlock ) (struct snd_akm4xxx*,int) ;int (* write ) (struct snd_akm4xxx*,int,unsigned char,unsigned char) ;int (* lock ) (struct snd_akm4xxx*,int) ;} ;
struct snd_akm4xxx {TYPE_1__ ops; } ;


 int snd_akm4xxx_set (struct snd_akm4xxx*,int,unsigned char,unsigned char) ;
 int stub1 (struct snd_akm4xxx*,int) ;
 int stub2 (struct snd_akm4xxx*,int,unsigned char,unsigned char) ;
 int stub3 (struct snd_akm4xxx*,int) ;

void snd_akm4xxx_write(struct snd_akm4xxx *ak, int chip, unsigned char reg,
         unsigned char val)
{
 ak->ops.lock(ak, chip);
 ak->ops.write(ak, chip, reg, val);


 snd_akm4xxx_set(ak, chip, reg, val);
 ak->ops.unlock(ak, chip);
}
