
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct jz4740_i2s {int clk_i2s; } ;
struct clk {int dummy; } ;


 int EINVAL ;


 struct clk* clk_get (int *,char*) ;
 int clk_put (struct clk*) ;
 int clk_set_parent (int ,struct clk*) ;
 int clk_set_rate (int ,unsigned int) ;
 struct jz4740_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int jz4740_i2s_set_sysclk(struct snd_soc_dai *dai, int clk_id,
 unsigned int freq, int dir)
{
 struct jz4740_i2s *i2s = snd_soc_dai_get_drvdata(dai);
 struct clk *parent;
 int ret = 0;

 switch (clk_id) {
 case 129:
  parent = clk_get(((void*)0), "ext");
  clk_set_parent(i2s->clk_i2s, parent);
  break;
 case 128:
  parent = clk_get(((void*)0), "pll half");
  clk_set_parent(i2s->clk_i2s, parent);
  ret = clk_set_rate(i2s->clk_i2s, freq);
  break;
 default:
  return -EINVAL;
 }
 clk_put(parent);

 return ret;
}
