#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ pci_cfg; } ;
struct sst_dsp {TYPE_1__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SST_CLKCTL ; 
 int /*<<< orphan*/  SST_CLKCTL_MASK ; 
 scalar_t__ SST_PMCS ; 
 int SST_PMCS_PS_MASK ; 
 int SST_VDRTCL0_D3PGD ; 
 int SST_VDRTCL0_D3SRAMPGD ; 
 int SST_VDRTCL0_DSRAMPGE_MASK ; 
 int SST_VDRTCL0_ISRAMPGE_MASK ; 
 int SST_VDRTCL2_APLLSE_MASK ; 
 int SST_VDRTCL2_DCLCGE ; 
 int SST_VDRTCL2_DTCGE ; 
 scalar_t__ SST_VDRTCTL0 ; 
 scalar_t__ SST_VDRTCTL2 ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct sst_dsp *sst)
{
	u32 val;
	u32 reg;

	/* Disable core clock gating (VDRTCTL2.DCLCGE = 0) */
	reg = FUNC0(sst->addr.pci_cfg + SST_VDRTCTL2);
	reg &= ~(SST_VDRTCL2_DCLCGE | SST_VDRTCL2_DTCGE);
	FUNC3(reg, sst->addr.pci_cfg + SST_VDRTCTL2);

	/* enable power gating and switch off DRAM & IRAM blocks */
	val = FUNC0(sst->addr.pci_cfg + SST_VDRTCTL0);
	val |= SST_VDRTCL0_DSRAMPGE_MASK |
		SST_VDRTCL0_ISRAMPGE_MASK;
	val &= ~(SST_VDRTCL0_D3PGD | SST_VDRTCL0_D3SRAMPGD);
	FUNC3(val, sst->addr.pci_cfg + SST_VDRTCTL0);

	/* switch off audio PLL */
	val = FUNC0(sst->addr.pci_cfg + SST_VDRTCTL2);
	val |= SST_VDRTCL2_APLLSE_MASK;
	FUNC3(val, sst->addr.pci_cfg + SST_VDRTCTL2);

	/* disable MCLK(clkctl.smos = 0) */
	FUNC1(sst, SST_CLKCTL,
		SST_CLKCTL_MASK, 0);

	/* Set D3 state, delay 50 us */
	val = FUNC0(sst->addr.pci_cfg + SST_PMCS);
	val |= SST_PMCS_PS_MASK;
	FUNC3(val, sst->addr.pci_cfg + SST_PMCS);
	FUNC2(50);

	/* Enable core clock gating (VDRTCTL2.DCLCGE = 1), delay 50 us */
	reg = FUNC0(sst->addr.pci_cfg + SST_VDRTCTL2);
	reg |= SST_VDRTCL2_DCLCGE | SST_VDRTCL2_DTCGE;
	FUNC3(reg, sst->addr.pci_cfg + SST_VDRTCTL2);

	FUNC2(50);

}