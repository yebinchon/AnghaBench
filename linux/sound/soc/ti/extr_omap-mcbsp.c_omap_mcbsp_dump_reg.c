
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mcbsp {int dev; int id; } ;


 int DRR1 ;
 int DRR2 ;
 int DXR1 ;
 int DXR2 ;
 int MCBSP_READ (struct omap_mcbsp*,int ) ;
 int PCR0 ;
 int RCR1 ;
 int RCR2 ;
 int SPCR1 ;
 int SPCR2 ;
 int SRGR1 ;
 int SRGR2 ;
 int XCR1 ;
 int XCR2 ;
 int dev_dbg (int ,char*,...) ;

__attribute__((used)) static void omap_mcbsp_dump_reg(struct omap_mcbsp *mcbsp)
{
 dev_dbg(mcbsp->dev, "**** McBSP%d regs ****\n", mcbsp->id);
 dev_dbg(mcbsp->dev, "DRR2:  0x%04x\n", MCBSP_READ(mcbsp, DRR2));
 dev_dbg(mcbsp->dev, "DRR1:  0x%04x\n", MCBSP_READ(mcbsp, DRR1));
 dev_dbg(mcbsp->dev, "DXR2:  0x%04x\n", MCBSP_READ(mcbsp, DXR2));
 dev_dbg(mcbsp->dev, "DXR1:  0x%04x\n", MCBSP_READ(mcbsp, DXR1));
 dev_dbg(mcbsp->dev, "SPCR2: 0x%04x\n", MCBSP_READ(mcbsp, SPCR2));
 dev_dbg(mcbsp->dev, "SPCR1: 0x%04x\n", MCBSP_READ(mcbsp, SPCR1));
 dev_dbg(mcbsp->dev, "RCR2:  0x%04x\n", MCBSP_READ(mcbsp, RCR2));
 dev_dbg(mcbsp->dev, "RCR1:  0x%04x\n", MCBSP_READ(mcbsp, RCR1));
 dev_dbg(mcbsp->dev, "XCR2:  0x%04x\n", MCBSP_READ(mcbsp, XCR2));
 dev_dbg(mcbsp->dev, "XCR1:  0x%04x\n", MCBSP_READ(mcbsp, XCR1));
 dev_dbg(mcbsp->dev, "SRGR2: 0x%04x\n", MCBSP_READ(mcbsp, SRGR2));
 dev_dbg(mcbsp->dev, "SRGR1: 0x%04x\n", MCBSP_READ(mcbsp, SRGR1));
 dev_dbg(mcbsp->dev, "PCR0:  0x%04x\n", MCBSP_READ(mcbsp, PCR0));
 dev_dbg(mcbsp->dev, "***********************\n");
}
