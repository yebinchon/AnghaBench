
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {scalar_t__ base; int regmap; } ;


 scalar_t__ HALO_CCM_CORE_CONTROL ;
 int HALO_CORE_EN ;
 scalar_t__ HALO_CORE_SOFT_RESET ;
 int HALO_CORE_SOFT_RESET_MASK ;
 int regmap_update_bits (int ,scalar_t__,int ,int) ;

__attribute__((used)) static void wm_halo_stop_core(struct wm_adsp *dsp)
{
 regmap_update_bits(dsp->regmap, dsp->base + HALO_CCM_CORE_CONTROL,
      HALO_CORE_EN, 0);


 regmap_update_bits(dsp->regmap, dsp->base + HALO_CORE_SOFT_RESET,
      HALO_CORE_SOFT_RESET_MASK, 1);
}
