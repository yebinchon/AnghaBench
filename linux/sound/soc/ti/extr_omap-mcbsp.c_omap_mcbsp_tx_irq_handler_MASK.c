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
typedef  int u16 ;
struct omap_mcbsp {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct omap_mcbsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_mcbsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_mcbsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPCR2 ; 
 int XSYNC_ERR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct omap_mcbsp *mcbsp = data;
	u16 irqst_spcr2;

	irqst_spcr2 = FUNC0(mcbsp, SPCR2);
	FUNC3(mcbsp->dev, "TX IRQ callback : 0x%x\n", irqst_spcr2);

	if (irqst_spcr2 & XSYNC_ERR) {
		FUNC4(mcbsp->dev, "TX Frame Sync Error! : 0x%x\n",
			irqst_spcr2);
		/* Writing zero to XSYNC_ERR clears the IRQ */
		FUNC2(mcbsp, SPCR2, FUNC1(mcbsp, SPCR2));
	}

	return IRQ_HANDLED;
}