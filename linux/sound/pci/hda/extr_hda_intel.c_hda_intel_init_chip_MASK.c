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
struct pci_dev {int dummy; } ;
struct hdac_bus {int /*<<< orphan*/ * mlcap; } ;
struct azx {scalar_t__ driver_type; struct pci_dev* pci; } ;

/* Variables and functions */
 scalar_t__ AZX_DRIVER_SKL ; 
 int /*<<< orphan*/  INTEL_HDA_CGCTL ; 
 int INTEL_HDA_CGCTL_MISCBDCGE ; 
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 struct hdac_bus* FUNC1 (struct azx*) ; 
 int /*<<< orphan*/  FUNC2 (struct azx*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct azx*) ; 
 int /*<<< orphan*/  FUNC4 (struct azx*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hdac_bus*,int) ; 

__attribute__((used)) static void FUNC8(struct azx *chip, bool full_reset)
{
	struct hdac_bus *bus = FUNC1(chip);
	struct pci_dev *pci = chip->pci;
	u32 val;

	FUNC7(bus, true);
	if (chip->driver_type == AZX_DRIVER_SKL) {
		FUNC5(pci, INTEL_HDA_CGCTL, &val);
		val = val & ~INTEL_HDA_CGCTL_MISCBDCGE;
		FUNC6(pci, INTEL_HDA_CGCTL, val);
	}
	FUNC2(chip, full_reset);
	if (chip->driver_type == AZX_DRIVER_SKL) {
		FUNC5(pci, INTEL_HDA_CGCTL, &val);
		val = val | INTEL_HDA_CGCTL_MISCBDCGE;
		FUNC6(pci, INTEL_HDA_CGCTL, val);
	}

	FUNC7(bus, false);

	/* reduce dma latency to avoid noise */
	if (FUNC0(pci))
		FUNC3(chip);

	if (bus->mlcap != NULL)
		FUNC4(chip);
}