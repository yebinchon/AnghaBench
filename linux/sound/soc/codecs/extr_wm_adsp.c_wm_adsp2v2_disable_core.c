
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {scalar_t__ base; int regmap; } ;


 scalar_t__ ADSP2V2_WDMA_CONFIG_2 ;
 scalar_t__ ADSP2_RDMA_CONFIG_1 ;
 scalar_t__ ADSP2_WDMA_CONFIG_1 ;
 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static void wm_adsp2v2_disable_core(struct wm_adsp *dsp)
{
 regmap_write(dsp->regmap, dsp->base + ADSP2_RDMA_CONFIG_1, 0);
 regmap_write(dsp->regmap, dsp->base + ADSP2_WDMA_CONFIG_1, 0);
 regmap_write(dsp->regmap, dsp->base + ADSP2V2_WDMA_CONFIG_2, 0);
}
