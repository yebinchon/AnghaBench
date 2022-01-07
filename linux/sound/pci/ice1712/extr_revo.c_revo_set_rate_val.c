
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_akm4xxx {scalar_t__ type; } ;


 scalar_t__ SND_AK4355 ;
 scalar_t__ SND_AK4358 ;
 unsigned char snd_akm4xxx_get (struct snd_akm4xxx*,int ,int) ;
 int snd_akm4xxx_reset (struct snd_akm4xxx*,int) ;
 int snd_akm4xxx_set (struct snd_akm4xxx*,int ,int,unsigned char) ;

__attribute__((used)) static void revo_set_rate_val(struct snd_akm4xxx *ak, unsigned int rate)
{
 unsigned char old, tmp, dfs;
 int reg, shift;

 if (rate == 0)
  return;


 if (rate > 96000)
  dfs = 2;
 else if (rate > 48000)
  dfs = 1;
 else
  dfs = 0;

 if (ak->type == SND_AK4355 || ak->type == SND_AK4358) {
  reg = 2;
  shift = 4;
 } else {
  reg = 1;
  shift = 3;
 }
 tmp = snd_akm4xxx_get(ak, 0, reg);
 old = (tmp >> shift) & 0x03;
 if (old == dfs)
  return;


 snd_akm4xxx_reset(ak, 1);
 tmp = snd_akm4xxx_get(ak, 0, reg);
 tmp &= ~(0x03 << shift);
 tmp |= dfs << shift;

 snd_akm4xxx_set(ak, 0, reg, tmp);
 snd_akm4xxx_reset(ak, 0);
}
