
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_i2s_clk_div {int div; int val; } ;
struct sun4i_i2s {TYPE_1__* variant; } ;
struct TYPE_2__ {int num_bclk_dividers; struct sun4i_i2s_clk_div* bclk_dividers; } ;


 int EINVAL ;

__attribute__((used)) static int sun4i_i2s_get_bclk_div(struct sun4i_i2s *i2s,
      unsigned long parent_rate,
      unsigned int sampling_rate,
      unsigned int channels,
      unsigned int word_size)
{
 const struct sun4i_i2s_clk_div *dividers = i2s->variant->bclk_dividers;
 int div = parent_rate / sampling_rate / word_size / channels;
 int i;

 for (i = 0; i < i2s->variant->num_bclk_dividers; i++) {
  const struct sun4i_i2s_clk_div *bdiv = &dividers[i];

  if (bdiv->div == div)
   return bdiv->val;
 }

 return -EINVAL;
}
