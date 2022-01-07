
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_i2s {int mod_clk; } ;


 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long sun8i_i2s_get_bclk_parent_rate(const struct sun4i_i2s *i2s)
{
 return clk_get_rate(i2s->mod_clk);
}
