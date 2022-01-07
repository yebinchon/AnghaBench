
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssp_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int SSACD ;
 int SSCR0 ;
 int SSCR1 ;
 int SSPSP ;
 int SSSR ;
 int SSTO ;
 int dev_dbg (int *,char*,int ,int ,int ) ;
 int pxa_ssp_read_reg (struct ssp_device*,int ) ;

__attribute__((used)) static void dump_registers(struct ssp_device *ssp)
{
 dev_dbg(&ssp->pdev->dev, "SSCR0 0x%08x SSCR1 0x%08x SSTO 0x%08x\n",
   pxa_ssp_read_reg(ssp, SSCR0), pxa_ssp_read_reg(ssp, SSCR1),
   pxa_ssp_read_reg(ssp, SSTO));

 dev_dbg(&ssp->pdev->dev, "SSPSP 0x%08x SSSR 0x%08x SSACD 0x%08x\n",
   pxa_ssp_read_reg(ssp, SSPSP), pxa_ssp_read_reg(ssp, SSSR),
   pxa_ssp_read_reg(ssp, SSACD));
}
