
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssp_device {scalar_t__ type; } ;


 scalar_t__ PXA25x_SSP ;
 int SSCR0 ;
 int pxa_ssp_read_reg (struct ssp_device*,int ) ;
 int pxa_ssp_write_reg (struct ssp_device*,int ,int) ;

__attribute__((used)) static void pxa_ssp_set_scr(struct ssp_device *ssp, u32 div)
{
 u32 sscr0 = pxa_ssp_read_reg(ssp, SSCR0);

 if (ssp->type == PXA25x_SSP) {
  sscr0 &= ~0x0000ff00;
  sscr0 |= ((div - 2)/2) << 8;
 } else {
  sscr0 &= ~0x000fff00;
  sscr0 |= (div - 1) << 8;
 }
 pxa_ssp_write_reg(ssp, SSCR0, sscr0);
}
