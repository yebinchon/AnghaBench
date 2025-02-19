
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {int regmap; scalar_t__ base; } ;
struct reg_sequence {int member_1; scalar_t__ member_0; } ;


 int ARRAY_SIZE (struct reg_sequence*) ;
 scalar_t__ HALO_MPU_LOCK_CONFIG ;
 scalar_t__ HALO_MPU_WINDOW_ACCESS_0 ;
 scalar_t__ HALO_MPU_WINDOW_ACCESS_1 ;
 scalar_t__ HALO_MPU_WINDOW_ACCESS_2 ;
 scalar_t__ HALO_MPU_WINDOW_ACCESS_3 ;
 scalar_t__ HALO_MPU_XMEM_ACCESS_0 ;
 scalar_t__ HALO_MPU_XMEM_ACCESS_1 ;
 scalar_t__ HALO_MPU_XMEM_ACCESS_2 ;
 scalar_t__ HALO_MPU_XMEM_ACCESS_3 ;
 scalar_t__ HALO_MPU_XREG_ACCESS_0 ;
 scalar_t__ HALO_MPU_XREG_ACCESS_1 ;
 scalar_t__ HALO_MPU_XREG_ACCESS_2 ;
 scalar_t__ HALO_MPU_XREG_ACCESS_3 ;
 scalar_t__ HALO_MPU_YMEM_ACCESS_0 ;
 scalar_t__ HALO_MPU_YMEM_ACCESS_1 ;
 scalar_t__ HALO_MPU_YMEM_ACCESS_2 ;
 scalar_t__ HALO_MPU_YMEM_ACCESS_3 ;
 scalar_t__ HALO_MPU_YREG_ACCESS_0 ;
 scalar_t__ HALO_MPU_YREG_ACCESS_1 ;
 scalar_t__ HALO_MPU_YREG_ACCESS_2 ;
 scalar_t__ HALO_MPU_YREG_ACCESS_3 ;
 int regmap_multi_reg_write (int ,struct reg_sequence*,int ) ;

__attribute__((used)) static int wm_halo_configure_mpu(struct wm_adsp *dsp, unsigned int lock_regions)
{
 struct reg_sequence config[] = {
  { dsp->base + HALO_MPU_LOCK_CONFIG, 0x5555 },
  { dsp->base + HALO_MPU_LOCK_CONFIG, 0xAAAA },
  { dsp->base + HALO_MPU_XMEM_ACCESS_0, 0xFFFFFFFF },
  { dsp->base + HALO_MPU_YMEM_ACCESS_0, 0xFFFFFFFF },
  { dsp->base + HALO_MPU_WINDOW_ACCESS_0, lock_regions },
  { dsp->base + HALO_MPU_XREG_ACCESS_0, lock_regions },
  { dsp->base + HALO_MPU_YREG_ACCESS_0, lock_regions },
  { dsp->base + HALO_MPU_XMEM_ACCESS_1, 0xFFFFFFFF },
  { dsp->base + HALO_MPU_YMEM_ACCESS_1, 0xFFFFFFFF },
  { dsp->base + HALO_MPU_WINDOW_ACCESS_1, lock_regions },
  { dsp->base + HALO_MPU_XREG_ACCESS_1, lock_regions },
  { dsp->base + HALO_MPU_YREG_ACCESS_1, lock_regions },
  { dsp->base + HALO_MPU_XMEM_ACCESS_2, 0xFFFFFFFF },
  { dsp->base + HALO_MPU_YMEM_ACCESS_2, 0xFFFFFFFF },
  { dsp->base + HALO_MPU_WINDOW_ACCESS_2, lock_regions },
  { dsp->base + HALO_MPU_XREG_ACCESS_2, lock_regions },
  { dsp->base + HALO_MPU_YREG_ACCESS_2, lock_regions },
  { dsp->base + HALO_MPU_XMEM_ACCESS_3, 0xFFFFFFFF },
  { dsp->base + HALO_MPU_YMEM_ACCESS_3, 0xFFFFFFFF },
  { dsp->base + HALO_MPU_WINDOW_ACCESS_3, lock_regions },
  { dsp->base + HALO_MPU_XREG_ACCESS_3, lock_regions },
  { dsp->base + HALO_MPU_YREG_ACCESS_3, lock_regions },
  { dsp->base + HALO_MPU_LOCK_CONFIG, 0 },
 };

 return regmap_multi_reg_write(dsp->regmap, config, ARRAY_SIZE(config));
}
