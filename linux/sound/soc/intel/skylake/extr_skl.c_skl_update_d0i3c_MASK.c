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
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct hdac_bus {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int AZX_REG_VS_D0I3C_CIP ; 
 int AZX_REG_VS_D0I3C_I3 ; 
 int /*<<< orphan*/  VS_D0I3C ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct hdac_bus* FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct hdac_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hdac_bus*,int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(struct device *dev, bool enable)
{
	struct pci_dev *pci = FUNC5(dev);
	struct hdac_bus *bus = FUNC2(pci);
	u8 reg;
	int timeout = 50;

	reg = FUNC3(bus, VS_D0I3C);
	/* Do not write to D0I3C until command in progress bit is cleared */
	while ((reg & AZX_REG_VS_D0I3C_CIP) && --timeout) {
		FUNC6(10);
		reg = FUNC3(bus, VS_D0I3C);
	}

	/* Highly unlikely. But if it happens, flag error explicitly */
	if (!timeout) {
		FUNC1(bus->dev, "Before D0I3C update: D0I3C CIP timeout\n");
		return;
	}

	if (enable)
		reg = reg | AZX_REG_VS_D0I3C_I3;
	else
		reg = reg & (~AZX_REG_VS_D0I3C_I3);

	FUNC4(bus, VS_D0I3C, reg);

	timeout = 50;
	/* Wait for cmd in progress to be cleared before exiting the function */
	reg = FUNC3(bus, VS_D0I3C);
	while ((reg & AZX_REG_VS_D0I3C_CIP) && --timeout) {
		FUNC6(10);
		reg = FUNC3(bus, VS_D0I3C);
	}

	/* Highly unlikely. But if it happens, flag error explicitly */
	if (!timeout) {
		FUNC1(bus->dev, "After D0I3C update: D0I3C CIP timeout\n");
		return;
	}

	FUNC0(bus->dev, "D0I3C register = 0x%x\n",
			FUNC3(bus, VS_D0I3C));
}