
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int codec_dai; } ;


 int clk_get_rate (int ) ;
 scalar_t__ clk_pout ;
 int pout ;
 int snd_soc_dai_set_pll (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int zylonite_wm9713_init(struct snd_soc_pcm_runtime *rtd)
{
 if (clk_pout)
  snd_soc_dai_set_pll(rtd->codec_dai, 0, 0,
        clk_get_rate(pout), 0);

 return 0;
}
