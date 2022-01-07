
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ssp_device {scalar_t__ mmio_base; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void mmp_sspa_write_reg(struct ssp_device *sspa, u32 reg, u32 val)
{
 __raw_writel(val, sspa->mmio_base + reg);
}
