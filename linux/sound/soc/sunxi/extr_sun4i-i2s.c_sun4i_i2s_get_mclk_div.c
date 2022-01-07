
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_i2s_clk_div {int div; int val; } ;
struct sun4i_i2s {TYPE_1__* variant; } ;
struct TYPE_2__ {int num_mclk_dividers; struct sun4i_i2s_clk_div* mclk_dividers; } ;


 int EINVAL ;

__attribute__((used)) static int sun4i_i2s_get_mclk_div(struct sun4i_i2s *i2s,
      unsigned long parent_rate,
      unsigned long mclk_rate)
{
 const struct sun4i_i2s_clk_div *dividers = i2s->variant->mclk_dividers;
 int div = parent_rate / mclk_rate;
 int i;

 for (i = 0; i < i2s->variant->num_mclk_dividers; i++) {
  const struct sun4i_i2s_clk_div *mdiv = &dividers[i];

  if (mdiv->div == div)
   return mdiv->val;
 }

 return -EINVAL;
}
