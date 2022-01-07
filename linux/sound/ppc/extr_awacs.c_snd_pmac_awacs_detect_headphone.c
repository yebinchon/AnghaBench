
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pmac {int hp_stat_mask; TYPE_1__* awacs; } ;
struct TYPE_2__ {int codec_stat; } ;


 int in_le32 (int *) ;

__attribute__((used)) static int snd_pmac_awacs_detect_headphone(struct snd_pmac *chip)
{
 return (in_le32(&chip->awacs->codec_stat) & chip->hp_stat_mask) ? 1 : 0;
}
