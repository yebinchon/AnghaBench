
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct axi_i2s {int clk_ref; } ;


 int clk_disable_unprepare (int ) ;
 struct axi_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void axi_i2s_shutdown(struct snd_pcm_substream *substream,
 struct snd_soc_dai *dai)
{
 struct axi_i2s *i2s = snd_soc_dai_get_drvdata(dai);

 clk_disable_unprepare(i2s->clk_ref);
}
