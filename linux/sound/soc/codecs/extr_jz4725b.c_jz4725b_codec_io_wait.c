
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jz_icdc {scalar_t__ base; } ;


 scalar_t__ ICDC_RGADW_OFFSET ;
 int ICDC_RGADW_RGWR ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int jz4725b_codec_io_wait(struct jz_icdc *icdc)
{
 u32 reg;

 return readl_poll_timeout(icdc->base + ICDC_RGADW_OFFSET, reg,
      !(reg & ICDC_RGADW_RGWR), 1000, 10000);
}
