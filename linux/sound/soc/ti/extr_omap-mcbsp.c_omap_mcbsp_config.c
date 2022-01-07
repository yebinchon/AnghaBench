
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_mcbsp_reg_cfg {int spcr2; int spcr1; int rcr2; int rcr1; int xcr2; int xcr1; int srgr2; int srgr1; int mcr2; int mcr1; int pcr0; int xccr; int rccr; } ;
struct omap_mcbsp {scalar_t__ irq; TYPE_1__* pdata; int phys_base; int id; int dev; } ;
struct TYPE_2__ {scalar_t__ has_wakeup; scalar_t__ has_ccr; } ;


 int IRQEN ;
 int MCBSP_WRITE (struct omap_mcbsp*,int ,int) ;
 int MCR1 ;
 int MCR2 ;
 int PCR0 ;
 int RCCR ;
 int RCR1 ;
 int RCR2 ;
 int ROVFLEN ;
 int RRDYEN ;
 int RSYNCERREN ;
 int RUNDFLEN ;
 int SPCR1 ;
 int SPCR2 ;
 int SRGR1 ;
 int SRGR2 ;
 int WAKEUPEN ;
 int XCCR ;
 int XCR1 ;
 int XCR2 ;
 int XOVFLEN ;
 int XRDYEN ;
 int XSYNCERREN ;
 int XUNDFLEN ;
 int dev_dbg (int ,char*,int ,int ) ;

__attribute__((used)) static void omap_mcbsp_config(struct omap_mcbsp *mcbsp,
         const struct omap_mcbsp_reg_cfg *config)
{
 dev_dbg(mcbsp->dev, "Configuring McBSP%d  phys_base: 0x%08lx\n",
  mcbsp->id, mcbsp->phys_base);


 MCBSP_WRITE(mcbsp, SPCR2, config->spcr2);
 MCBSP_WRITE(mcbsp, SPCR1, config->spcr1);
 MCBSP_WRITE(mcbsp, RCR2, config->rcr2);
 MCBSP_WRITE(mcbsp, RCR1, config->rcr1);
 MCBSP_WRITE(mcbsp, XCR2, config->xcr2);
 MCBSP_WRITE(mcbsp, XCR1, config->xcr1);
 MCBSP_WRITE(mcbsp, SRGR2, config->srgr2);
 MCBSP_WRITE(mcbsp, SRGR1, config->srgr1);
 MCBSP_WRITE(mcbsp, MCR2, config->mcr2);
 MCBSP_WRITE(mcbsp, MCR1, config->mcr1);
 MCBSP_WRITE(mcbsp, PCR0, config->pcr0);
 if (mcbsp->pdata->has_ccr) {
  MCBSP_WRITE(mcbsp, XCCR, config->xccr);
  MCBSP_WRITE(mcbsp, RCCR, config->rccr);
 }

 if (mcbsp->pdata->has_wakeup)
  MCBSP_WRITE(mcbsp, WAKEUPEN, XRDYEN | RRDYEN);


 if (mcbsp->irq)
  MCBSP_WRITE(mcbsp, IRQEN, RSYNCERREN | XSYNCERREN |
       RUNDFLEN | ROVFLEN | XUNDFLEN | XOVFLEN);
}
