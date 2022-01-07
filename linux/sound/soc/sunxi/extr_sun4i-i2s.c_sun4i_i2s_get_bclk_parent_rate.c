
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_i2s {unsigned long mclk_freq; } ;



__attribute__((used)) static unsigned long sun4i_i2s_get_bclk_parent_rate(const struct sun4i_i2s *i2s)
{
 return i2s->mclk_freq;
}
