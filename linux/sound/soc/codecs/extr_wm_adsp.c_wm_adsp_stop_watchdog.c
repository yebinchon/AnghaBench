
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {scalar_t__ base; int regmap; } ;


 scalar_t__ ADSP2_WATCHDOG ;
 int ADSP2_WDT_ENA_MASK ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void wm_adsp_stop_watchdog(struct wm_adsp *dsp)
{
 regmap_update_bits(dsp->regmap, dsp->base + ADSP2_WATCHDOG,
      ADSP2_WDT_ENA_MASK, 0);
}
