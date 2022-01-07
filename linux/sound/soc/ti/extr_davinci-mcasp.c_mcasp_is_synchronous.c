
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct davinci_mcasp {int dummy; } ;


 int AFSRE ;
 int DAVINCI_MCASP_ACLKXCTL_REG ;
 int DAVINCI_MCASP_RXFMCTL_REG ;
 int TX_ASYNC ;
 int mcasp_get_reg (struct davinci_mcasp*,int ) ;

__attribute__((used)) static bool mcasp_is_synchronous(struct davinci_mcasp *mcasp)
{
 u32 rxfmctl = mcasp_get_reg(mcasp, DAVINCI_MCASP_RXFMCTL_REG);
 u32 aclkxctl = mcasp_get_reg(mcasp, DAVINCI_MCASP_ACLKXCTL_REG);

 return !(aclkxctl & TX_ASYNC) && rxfmctl & AFSRE;
}
