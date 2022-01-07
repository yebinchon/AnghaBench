
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {scalar_t__ base; int regmap; } ;


 scalar_t__ ADSP2_CONTROL ;
 int ADSP2_SYS_ENA ;
 int regmap_update_bits_async (int ,scalar_t__,int ,int ) ;
 int wm_adsp2v2_enable_core (struct wm_adsp*) ;

__attribute__((used)) static int wm_adsp2_enable_core(struct wm_adsp *dsp)
{
 int ret;

 ret = regmap_update_bits_async(dsp->regmap, dsp->base + ADSP2_CONTROL,
           ADSP2_SYS_ENA, ADSP2_SYS_ENA);
 if (ret != 0)
  return ret;

 return wm_adsp2v2_enable_core(dsp);
}
