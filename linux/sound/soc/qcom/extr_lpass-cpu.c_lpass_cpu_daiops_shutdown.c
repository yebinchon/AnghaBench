
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {TYPE_1__* driver; } ;
struct snd_pcm_substream {int dummy; } ;
struct lpass_data {int * mi2s_osr_clk; int * mi2s_bit_clk; } ;
struct TYPE_2__ {size_t id; } ;


 int clk_disable_unprepare (int ) ;
 struct lpass_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void lpass_cpu_daiops_shutdown(struct snd_pcm_substream *substream,
  struct snd_soc_dai *dai)
{
 struct lpass_data *drvdata = snd_soc_dai_get_drvdata(dai);

 clk_disable_unprepare(drvdata->mi2s_bit_clk[dai->driver->id]);

 clk_disable_unprepare(drvdata->mi2s_osr_clk[dai->driver->id]);
}
