
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct msm8916_wcd_digital_priv {int mclk; } ;


 int clk_set_rate (int ,unsigned int) ;
 struct msm8916_wcd_digital_priv* dev_get_drvdata (int ) ;

__attribute__((used)) static int msm8916_wcd_digital_component_set_sysclk(struct snd_soc_component *component,
      int clk_id, int source,
      unsigned int freq, int dir)
{
 struct msm8916_wcd_digital_priv *p = dev_get_drvdata(component->dev);

 return clk_set_rate(p->mclk, freq);
}
