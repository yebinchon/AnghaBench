
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct jz4740_i2s {int clk_aic; } ;


 int clk_disable_unprepare (int ) ;
 struct jz4740_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int jz4740_i2s_dai_remove(struct snd_soc_dai *dai)
{
 struct jz4740_i2s *i2s = snd_soc_dai_get_drvdata(dai);

 clk_disable_unprepare(i2s->clk_aic);
 return 0;
}
