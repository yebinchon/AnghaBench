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
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DEVICE_ID_AMD_FE_GATE_7007 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_VIA_82C598_1 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_VIA_8365_1 ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_AMD ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_VIA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *vortex, int fix)
{
	struct pci_dev *via = NULL;

	/* autodetect if workarounds are required */
	if (fix == 255) {
		/* VIA KT133 */
		via = FUNC2(PCI_VENDOR_ID_VIA,
			PCI_DEVICE_ID_VIA_8365_1, NULL);
		/* VIA Apollo */
		if (via == NULL) {
			via = FUNC2(PCI_VENDOR_ID_VIA,
				PCI_DEVICE_ID_VIA_82C598_1, NULL);
			/* AMD Irongate */
			if (via == NULL)
				via = FUNC2(PCI_VENDOR_ID_AMD,
					PCI_DEVICE_ID_AMD_FE_GATE_7007, NULL);
		}
		if (via) {
			FUNC0(&vortex->dev,
				 "Activating latency workaround...\n");
			FUNC4(vortex);
			FUNC3(via);
		}
	} else {
		if (fix & 0x1)
			FUNC4(vortex);
		if ((fix & 0x2) && (via = FUNC2(PCI_VENDOR_ID_VIA,
				PCI_DEVICE_ID_VIA_8365_1, NULL)))
			FUNC3(via);
		if ((fix & 0x4) && (via = FUNC2(PCI_VENDOR_ID_VIA,
				PCI_DEVICE_ID_VIA_82C598_1, NULL)))
			FUNC3(via);
		if ((fix & 0x8) && (via = FUNC2(PCI_VENDOR_ID_AMD,
				PCI_DEVICE_ID_AMD_FE_GATE_7007, NULL)))
			FUNC3(via);
	}
	FUNC1(via);
}