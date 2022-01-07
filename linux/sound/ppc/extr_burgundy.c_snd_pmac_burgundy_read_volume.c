
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {int dummy; } ;


 long BURGUNDY_VOLUME_OFFSET ;
 int snd_pmac_burgundy_rcw (struct snd_pmac*,unsigned int) ;

__attribute__((used)) static void
snd_pmac_burgundy_read_volume(struct snd_pmac *chip, unsigned int address,
         long *volume, int shift)
{
 int wvolume;

 wvolume = snd_pmac_burgundy_rcw(chip, address);

 volume[0] = wvolume & 0xff;
 if (volume[0] >= BURGUNDY_VOLUME_OFFSET)
  volume[0] -= BURGUNDY_VOLUME_OFFSET;
 else
  volume[0] = 0;
 volume[1] = (wvolume >> shift) & 0xff;
 if (volume[1] >= BURGUNDY_VOLUME_OFFSET)
  volume[1] -= BURGUNDY_VOLUME_OFFSET;
 else
  volume[1] = 0;
}
