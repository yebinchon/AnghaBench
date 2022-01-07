
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {scalar_t__ base; int regmap; } ;


 scalar_t__ HALO_WDT_CONTROL ;
 int HALO_WDT_EN_MASK ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void wm_halo_stop_watchdog(struct wm_adsp *dsp)
{
 regmap_update_bits(dsp->regmap, dsp->base + HALO_WDT_CONTROL,
      HALO_WDT_EN_MASK, 0);
}
