
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es7241_data {int fmt; } ;
struct device {int of_node; } ;


 int SND_SOC_DAIFMT_I2S ;
 int SND_SOC_DAIFMT_LEFT_J ;
 int of_property_read_bool (int ,char*) ;

__attribute__((used)) static void es7241_parse_fmt(struct device *dev, struct es7241_data *priv)
{
 bool is_leftj;





 is_leftj = of_property_read_bool(dev->of_node,
      "everest,sdout-pull-down");
 if (is_leftj)
  priv->fmt = SND_SOC_DAIFMT_LEFT_J;
 else
  priv->fmt = SND_SOC_DAIFMT_I2S;
}
