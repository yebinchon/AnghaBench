
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {scalar_t__ base; int regmap; } ;
struct snd_soc_dapm_widget {size_t shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;


 int ADSP2_CLK_SEL_MASK ;
 unsigned int ADSP2_CLK_SEL_SHIFT ;
 scalar_t__ ADSP2_CLOCKING ;
 int adsp_err (struct wm_adsp*,char*,int) ;
 int regmap_update_bits (int ,scalar_t__,int ,unsigned int) ;
 struct wm_adsp* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

int wm_adsp2_set_dspclk(struct snd_soc_dapm_widget *w, unsigned int freq)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct wm_adsp *dsps = snd_soc_component_get_drvdata(component);
 struct wm_adsp *dsp = &dsps[w->shift];
 int ret;

 ret = regmap_update_bits(dsp->regmap, dsp->base + ADSP2_CLOCKING,
     ADSP2_CLK_SEL_MASK,
     freq << ADSP2_CLK_SEL_SHIFT);
 if (ret)
  adsp_err(dsp, "Failed to set clock rate: %d\n", ret);

 return ret;
}
