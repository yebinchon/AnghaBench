
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1843 {int dummy; } ;


 int ad1843_DA1F ;
 int ad1843_DA2F ;
 int ad1843_write_bits (struct snd_ad1843*,int *,int) ;

void ad1843_shutdown_dac(struct snd_ad1843 *ad1843, unsigned int id)
{
 if (id)
  ad1843_write_bits(ad1843, &ad1843_DA2F, 1);
 else
  ad1843_write_bits(ad1843, &ad1843_DA1F, 1);
}
