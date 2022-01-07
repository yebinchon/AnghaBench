
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pmac {TYPE_1__* awacs; } ;
struct TYPE_2__ {int codec_ctrl; } ;


 int out_le32 (int *,unsigned int) ;
 int snd_pmac_burgundy_busy_wait (struct snd_pmac*) ;

__attribute__((used)) static void
snd_pmac_burgundy_wcb(struct snd_pmac *chip, unsigned int addr,
        unsigned int val)
{
 out_le32(&chip->awacs->codec_ctrl, addr + 0x300000 + (val & 0xff));
 snd_pmac_burgundy_busy_wait(chip);
}
