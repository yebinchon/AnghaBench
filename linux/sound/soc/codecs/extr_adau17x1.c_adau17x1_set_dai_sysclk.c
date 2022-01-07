
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_dai {int component; } ;
struct adau {int clk_src; unsigned int sysclk; int mclk; } ;





 int EINVAL ;
 int adau17x1_dapm_pll_route ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (int ) ;
 struct adau* snd_soc_component_get_drvdata (int ) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int *,int) ;
 int snd_soc_dapm_del_routes (struct snd_soc_dapm_context*,int *,int) ;

__attribute__((used)) static int adau17x1_set_dai_sysclk(struct snd_soc_dai *dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(dai->component);
 struct adau *adau = snd_soc_component_get_drvdata(dai->component);
 bool is_pll;
 bool was_pll;

 switch (clk_id) {
 case 130:
  is_pll = 0;
  break;
 case 128:
  if (!adau->mclk)
   return -EINVAL;

 case 129:
  is_pll = 1;
  break;
 default:
  return -EINVAL;
 }

 switch (adau->clk_src) {
 case 130:
  was_pll = 0;
  break;
 case 129:
 case 128:
  was_pll = 1;
  break;
 default:
  return -EINVAL;
 }

 adau->sysclk = freq;

 if (is_pll != was_pll) {
  if (is_pll) {
   snd_soc_dapm_add_routes(dapm,
    &adau17x1_dapm_pll_route, 1);
  } else {
   snd_soc_dapm_del_routes(dapm,
    &adau17x1_dapm_pll_route, 1);
  }
 }

 adau->clk_src = clk_id;

 return 0;
}
