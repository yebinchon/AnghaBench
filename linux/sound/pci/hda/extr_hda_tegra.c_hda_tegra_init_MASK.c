#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct hda_tegra {scalar_t__ regs; } ;

/* Variables and functions */
 int HDA_BAR0_FINAL_PROGRAM ; 
 int HDA_BAR0_INIT_PROGRAM ; 
 scalar_t__ HDA_CFG_BAR0 ; 
 scalar_t__ HDA_CFG_CMD ; 
 int HDA_DISABLE_INTR ; 
 int HDA_ENABLE_BUS_MASTER ; 
 int HDA_ENABLE_IO_SPACE ; 
 int HDA_ENABLE_MEM_SPACE ; 
 int HDA_ENABLE_SERR ; 
 int HDA_FPCI_BAR0_START ; 
 scalar_t__ HDA_IPFS_CONFIG ; 
 int HDA_IPFS_EN_FPCI ; 
 int HDA_IPFS_EN_INTR ; 
 scalar_t__ HDA_IPFS_FPCI_BAR0 ; 
 scalar_t__ HDA_IPFS_INTR_MASK ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct hda_tegra *hda)
{
	u32 v;

	/* Enable PCI access */
	v = FUNC0(hda->regs + HDA_IPFS_CONFIG);
	v |= HDA_IPFS_EN_FPCI;
	FUNC1(v, hda->regs + HDA_IPFS_CONFIG);

	/* Enable MEM/IO space and bus master */
	v = FUNC0(hda->regs + HDA_CFG_CMD);
	v &= ~HDA_DISABLE_INTR;
	v |= HDA_ENABLE_MEM_SPACE | HDA_ENABLE_IO_SPACE |
		HDA_ENABLE_BUS_MASTER | HDA_ENABLE_SERR;
	FUNC1(v, hda->regs + HDA_CFG_CMD);

	FUNC1(HDA_BAR0_INIT_PROGRAM, hda->regs + HDA_CFG_BAR0);
	FUNC1(HDA_BAR0_FINAL_PROGRAM, hda->regs + HDA_CFG_BAR0);
	FUNC1(HDA_FPCI_BAR0_START, hda->regs + HDA_IPFS_FPCI_BAR0);

	v = FUNC0(hda->regs + HDA_IPFS_INTR_MASK);
	v |= HDA_IPFS_EN_INTR;
	FUNC1(v, hda->regs + HDA_IPFS_INTR_MASK);
}