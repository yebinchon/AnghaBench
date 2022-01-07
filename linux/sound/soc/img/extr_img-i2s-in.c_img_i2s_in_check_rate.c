
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_i2s_in {int dev; int clk_sys; } ;


 int EINVAL ;
 unsigned int clk_get_rate (int ) ;
 int dev_err (int ,char*,unsigned int,unsigned int) ;

__attribute__((used)) static int img_i2s_in_check_rate(struct img_i2s_in *i2s,
  unsigned int sample_rate, unsigned int frame_size,
  unsigned int *bclk_filter_enable,
  unsigned int *bclk_filter_value)
{
 unsigned int bclk_freq, cur_freq;

 bclk_freq = sample_rate * frame_size;

 cur_freq = clk_get_rate(i2s->clk_sys);

 if (cur_freq >= bclk_freq * 8) {
  *bclk_filter_enable = 1;
  *bclk_filter_value = 0;
 } else if (cur_freq >= bclk_freq * 7) {
  *bclk_filter_enable = 1;
  *bclk_filter_value = 1;
 } else if (cur_freq >= bclk_freq * 6) {
  *bclk_filter_enable = 0;
  *bclk_filter_value = 0;
 } else {
  dev_err(i2s->dev,
   "Sys clock rate %u insufficient for sample rate %u\n",
   cur_freq, sample_rate);
  return -EINVAL;
 }

 return 0;
}
