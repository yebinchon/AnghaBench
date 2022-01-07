
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_spdif_in {int clk_sys; } ;


 int EINVAL ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static int img_spdif_in_check_max_rate(struct img_spdif_in *spdif,
  unsigned int sample_rate, unsigned long *actual_freq)
{
 unsigned long min_freq, freq_t;


 min_freq = sample_rate * 2 * 32 * 24;

 freq_t = clk_get_rate(spdif->clk_sys);

 if (freq_t < min_freq)
  return -EINVAL;

 *actual_freq = freq_t;

 return 0;
}
