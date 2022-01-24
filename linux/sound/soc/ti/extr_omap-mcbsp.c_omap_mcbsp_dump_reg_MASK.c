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
struct omap_mcbsp {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRR1 ; 
 int /*<<< orphan*/  DRR2 ; 
 int /*<<< orphan*/  DXR1 ; 
 int /*<<< orphan*/  DXR2 ; 
 int /*<<< orphan*/  FUNC0 (struct omap_mcbsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCR0 ; 
 int /*<<< orphan*/  RCR1 ; 
 int /*<<< orphan*/  RCR2 ; 
 int /*<<< orphan*/  SPCR1 ; 
 int /*<<< orphan*/  SPCR2 ; 
 int /*<<< orphan*/  SRGR1 ; 
 int /*<<< orphan*/  SRGR2 ; 
 int /*<<< orphan*/  XCR1 ; 
 int /*<<< orphan*/  XCR2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC2(struct omap_mcbsp *mcbsp)
{
	FUNC1(mcbsp->dev, "**** McBSP%d regs ****\n", mcbsp->id);
	FUNC1(mcbsp->dev, "DRR2:  0x%04x\n", FUNC0(mcbsp, DRR2));
	FUNC1(mcbsp->dev, "DRR1:  0x%04x\n", FUNC0(mcbsp, DRR1));
	FUNC1(mcbsp->dev, "DXR2:  0x%04x\n", FUNC0(mcbsp, DXR2));
	FUNC1(mcbsp->dev, "DXR1:  0x%04x\n", FUNC0(mcbsp, DXR1));
	FUNC1(mcbsp->dev, "SPCR2: 0x%04x\n", FUNC0(mcbsp, SPCR2));
	FUNC1(mcbsp->dev, "SPCR1: 0x%04x\n", FUNC0(mcbsp, SPCR1));
	FUNC1(mcbsp->dev, "RCR2:  0x%04x\n", FUNC0(mcbsp, RCR2));
	FUNC1(mcbsp->dev, "RCR1:  0x%04x\n", FUNC0(mcbsp, RCR1));
	FUNC1(mcbsp->dev, "XCR2:  0x%04x\n", FUNC0(mcbsp, XCR2));
	FUNC1(mcbsp->dev, "XCR1:  0x%04x\n", FUNC0(mcbsp, XCR1));
	FUNC1(mcbsp->dev, "SRGR2: 0x%04x\n", FUNC0(mcbsp, SRGR2));
	FUNC1(mcbsp->dev, "SRGR1: 0x%04x\n", FUNC0(mcbsp, SRGR1));
	FUNC1(mcbsp->dev, "PCR0:  0x%04x\n", FUNC0(mcbsp, PCR0));
	FUNC1(mcbsp->dev, "***********************\n");
}