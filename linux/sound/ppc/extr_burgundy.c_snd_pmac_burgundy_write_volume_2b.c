
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {int dummy; } ;


 int BURGUNDY_VOLUME_OFFSET ;
 int snd_pmac_burgundy_wcb (struct snd_pmac*,unsigned int,int) ;

__attribute__((used)) static void
snd_pmac_burgundy_write_volume_2b(struct snd_pmac *chip, unsigned int address,
      long *volume, int off)
{
 int lvolume, rvolume;

 off |= off << 2;
 lvolume = volume[0] ? volume[0] + BURGUNDY_VOLUME_OFFSET : 0;
 rvolume = volume[1] ? volume[1] + BURGUNDY_VOLUME_OFFSET : 0;

 snd_pmac_burgundy_wcb(chip, address + off, lvolume);
 snd_pmac_burgundy_wcb(chip, address + off + 0x500, rvolume);
}
