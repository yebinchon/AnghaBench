
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct adau {scalar_t__ clk_src; } ;


 scalar_t__ ADAU17X1_CLK_SRC_MCLK ;
 int ARRAY_SIZE (int *) ;
 int adau17x1_dapm_pll_route ;
 int * adau17x1_dapm_routes ;
 int * adau17x1_dsp_dapm_routes ;
 scalar_t__ adau17x1_has_dsp (struct adau*) ;
 int * adau17x1_no_dsp_dapm_routes ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct adau* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int *,int) ;

int adau17x1_add_routes(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct adau *adau = snd_soc_component_get_drvdata(component);
 int ret;

 ret = snd_soc_dapm_add_routes(dapm, adau17x1_dapm_routes,
  ARRAY_SIZE(adau17x1_dapm_routes));
 if (ret)
  return ret;

 if (adau17x1_has_dsp(adau)) {
  ret = snd_soc_dapm_add_routes(dapm, adau17x1_dsp_dapm_routes,
   ARRAY_SIZE(adau17x1_dsp_dapm_routes));
 } else {
  ret = snd_soc_dapm_add_routes(dapm, adau17x1_no_dsp_dapm_routes,
   ARRAY_SIZE(adau17x1_no_dsp_dapm_routes));
 }

 if (adau->clk_src != ADAU17X1_CLK_SRC_MCLK)
  snd_soc_dapm_add_routes(dapm, &adau17x1_dapm_pll_route, 1);

 return ret;
}
