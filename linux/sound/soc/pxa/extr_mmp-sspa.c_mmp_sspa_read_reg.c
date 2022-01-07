
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ssp_device {scalar_t__ mmio_base; } ;


 scalar_t__ __raw_readl (scalar_t__) ;

__attribute__((used)) static u32 mmp_sspa_read_reg(struct ssp_device *sspa, u32 reg)
{
 return __raw_readl(sspa->mmio_base + reg);
}
