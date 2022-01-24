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
struct lx6464es {int dummy; } ;

/* Variables and functions */
 int IRQCS_ENABLE_PCIDB ; 
 int IRQCS_ENABLE_PCIIRQ ; 
 int /*<<< orphan*/  ePLX_IRQCS ; 
 int FUNC0 (struct lx6464es*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lx6464es*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct lx6464es *chip, int enable)
{
	u32 reg = FUNC0(chip, ePLX_IRQCS);

	/* enable/disable interrupts
	 *
	 * Set the Doorbell and PCI interrupt enable bits
	 *
	 * */
	if (enable)
		reg |=  (IRQCS_ENABLE_PCIIRQ | IRQCS_ENABLE_PCIDB);
	else
		reg &= ~(IRQCS_ENABLE_PCIIRQ | IRQCS_ENABLE_PCIDB);
	FUNC1(chip, ePLX_IRQCS, reg);
}