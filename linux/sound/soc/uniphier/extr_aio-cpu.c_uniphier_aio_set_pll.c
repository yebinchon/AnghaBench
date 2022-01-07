
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_aio {int chip; } ;
struct snd_soc_dai {int dummy; } ;


 int EINVAL ;
 int aio_chip_set_pll (int ,int,unsigned int) ;
 int is_valid_pll (int ,int) ;
 struct uniphier_aio* uniphier_priv (struct snd_soc_dai*) ;

__attribute__((used)) static int uniphier_aio_set_pll(struct snd_soc_dai *dai, int pll_id,
    int source, unsigned int freq_in,
    unsigned int freq_out)
{
 struct uniphier_aio *aio = uniphier_priv(dai);
 int ret;

 if (!is_valid_pll(aio->chip, pll_id))
  return -EINVAL;

 ret = aio_chip_set_pll(aio->chip, pll_id, freq_out);
 if (ret < 0)
  return ret;

 return 0;
}
