
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct davinci_mcasp {int dummy; } ;


 int __davinci_mcasp_set_clkdiv (struct davinci_mcasp*,int,int,int) ;
 struct davinci_mcasp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int davinci_mcasp_set_clkdiv(struct snd_soc_dai *dai, int div_id,
        int div)
{
 struct davinci_mcasp *mcasp = snd_soc_dai_get_drvdata(dai);

 return __davinci_mcasp_set_clkdiv(mcasp, div_id, div, 1);
}
