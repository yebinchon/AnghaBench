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
struct pci_device_id {int class; int class_mask; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
#define  PCI_ANY_ID 130 
#define  PCI_BASE_CLASS_DISPLAY 129 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  PCI_VENDOR_ID_INTEL 128 
 int FUNC1 (struct pci_device_id const*) ; 

__attribute__((used)) static bool FUNC2(void)
{
	static const struct pci_device_id ids[] = {
		{ FUNC0(PCI_VENDOR_ID_INTEL, PCI_ANY_ID),
		  .class = PCI_BASE_CLASS_DISPLAY << 16,
		  .class_mask = 0xff << 16 },
		{}
	};
	return FUNC1(ids);
}