
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {int dummy; } ;


 int BURGUNDY_VOLUME_OFFSET ;
 int snd_pmac_burgundy_wcw (struct snd_pmac*,unsigned int,int) ;

__attribute__((used)) static void
snd_pmac_burgundy_write_volume(struct snd_pmac *chip, unsigned int address,
          long *volume, int shift)
{
 int hardvolume, lvolume, rvolume;

 if (volume[0] < 0 || volume[0] > 100 ||
     volume[1] < 0 || volume[1] > 100)
  return;
 lvolume = volume[0] ? volume[0] + BURGUNDY_VOLUME_OFFSET : 0;
 rvolume = volume[1] ? volume[1] + BURGUNDY_VOLUME_OFFSET : 0;

 hardvolume = lvolume + (rvolume << shift);
 if (shift == 8)
  hardvolume |= hardvolume << 16;

 snd_pmac_burgundy_wcw(chip, address, hardvolume);
}
