
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {int var; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int ARRAY_SIZE (unsigned int*) ;
 int hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_list (int ,int ,unsigned int*,int ) ;

__attribute__((used)) static int snd_pcm_hw_rule_pow2(struct snd_pcm_hw_params *params, struct snd_pcm_hw_rule *rule)
{
 static unsigned int pow2_sizes[] = {
  1<<0, 1<<1, 1<<2, 1<<3, 1<<4, 1<<5, 1<<6, 1<<7,
  1<<8, 1<<9, 1<<10, 1<<11, 1<<12, 1<<13, 1<<14, 1<<15,
  1<<16, 1<<17, 1<<18, 1<<19, 1<<20, 1<<21, 1<<22, 1<<23,
  1<<24, 1<<25, 1<<26, 1<<27, 1<<28, 1<<29, 1<<30
 };
 return snd_interval_list(hw_param_interval(params, rule->var),
     ARRAY_SIZE(pow2_sizes), pow2_sizes, 0);
}
