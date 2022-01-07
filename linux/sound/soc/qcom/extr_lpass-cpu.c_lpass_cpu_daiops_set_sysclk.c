
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dev; TYPE_1__* driver; } ;
struct lpass_data {int * mi2s_osr_clk; } ;
struct TYPE_2__ {size_t id; } ;


 int clk_set_rate (int ,unsigned int) ;
 int dev_err (int ,char*,unsigned int,int) ;
 struct lpass_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int lpass_cpu_daiops_set_sysclk(struct snd_soc_dai *dai, int clk_id,
  unsigned int freq, int dir)
{
 struct lpass_data *drvdata = snd_soc_dai_get_drvdata(dai);
 int ret;

 ret = clk_set_rate(drvdata->mi2s_osr_clk[dai->driver->id], freq);
 if (ret)
  dev_err(dai->dev, "error setting mi2s osrclk to %u: %d\n",
   freq, ret);

 return ret;
}
