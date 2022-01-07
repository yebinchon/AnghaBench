
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {scalar_t__ base; int regmap; } ;


 scalar_t__ HALO_CCM_CORE_CONTROL ;
 int HALO_CORE_EN ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static int wm_halo_start_core(struct wm_adsp *dsp)
{
 return regmap_update_bits(dsp->regmap,
      dsp->base + HALO_CCM_CORE_CONTROL,
      HALO_CORE_EN, HALO_CORE_EN);
}
