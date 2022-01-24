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
 int /*<<< orphan*/  IRQST ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct omap_mcbsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_mcbsp*,int /*<<< orphan*/ ,int) ; 
 int REOFEN ; 
 int RFSREN ; 
 int ROVFLEN ; 
 int RRDYEN ; 
 int RSYNCERREN ; 
 int RUNDFLEN ; 
 int XEMPTYEOFEN ; 
 int XEOFEN ; 
 int XFSXEN ; 
 int XOVFLEN ; 
 int XRDYEN ; 
 int XSYNCERREN ; 
 int XUNDFLEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct omap_mcbsp *mcbsp = data;
	u16 irqst;

	irqst = FUNC0(mcbsp, IRQST);
	FUNC2(mcbsp->dev, "IRQ callback : 0x%x\n", irqst);

	if (irqst & RSYNCERREN)
		FUNC3(mcbsp->dev, "RX Frame Sync Error!\n");
	if (irqst & RFSREN)
		FUNC2(mcbsp->dev, "RX Frame Sync\n");
	if (irqst & REOFEN)
		FUNC2(mcbsp->dev, "RX End Of Frame\n");
	if (irqst & RRDYEN)
		FUNC2(mcbsp->dev, "RX Buffer Threshold Reached\n");
	if (irqst & RUNDFLEN)
		FUNC3(mcbsp->dev, "RX Buffer Underflow!\n");
	if (irqst & ROVFLEN)
		FUNC3(mcbsp->dev, "RX Buffer Overflow!\n");

	if (irqst & XSYNCERREN)
		FUNC3(mcbsp->dev, "TX Frame Sync Error!\n");
	if (irqst & XFSXEN)
		FUNC2(mcbsp->dev, "TX Frame Sync\n");
	if (irqst & XEOFEN)
		FUNC2(mcbsp->dev, "TX End Of Frame\n");
	if (irqst & XRDYEN)
		FUNC2(mcbsp->dev, "TX Buffer threshold Reached\n");
	if (irqst & XUNDFLEN)
		FUNC3(mcbsp->dev, "TX Buffer Underflow!\n");
	if (irqst & XOVFLEN)
		FUNC3(mcbsp->dev, "TX Buffer Overflow!\n");
	if (irqst & XEMPTYEOFEN)
		FUNC2(mcbsp->dev, "TX Buffer empty at end of frame\n");

	FUNC1(mcbsp, IRQST, irqst);

	return IRQ_HANDLED;
}