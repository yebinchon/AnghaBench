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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 unsigned char PCI_ANY_ID ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int class ; 
 int class_mask ; 
 unsigned char device ; 
 int /*<<< orphan*/  pci_device_id ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 unsigned char subdevice ; 
 unsigned char subvendor ; 
 unsigned char vendor ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC5(const char *filename,
			void *symval, char *alias)
{
	/* Class field can be divided into these three. */
	unsigned char baseclass, subclass, interface,
		baseclass_mask, subclass_mask, interface_mask;

	FUNC1(symval, pci_device_id, vendor);
	FUNC1(symval, pci_device_id, device);
	FUNC1(symval, pci_device_id, subvendor);
	FUNC1(symval, pci_device_id, subdevice);
	FUNC1(symval, pci_device_id, class);
	FUNC1(symval, pci_device_id, class_mask);

	FUNC3(alias, "pci:");
	FUNC0(alias, "v", vendor != PCI_ANY_ID, vendor);
	FUNC0(alias, "d", device != PCI_ANY_ID, device);
	FUNC0(alias, "sv", subvendor != PCI_ANY_ID, subvendor);
	FUNC0(alias, "sd", subdevice != PCI_ANY_ID, subdevice);

	baseclass = (class) >> 16;
	baseclass_mask = (class_mask) >> 16;
	subclass = (class) >> 8;
	subclass_mask = (class_mask) >> 8;
	interface = class;
	interface_mask = class_mask;

	if ((baseclass_mask != 0 && baseclass_mask != 0xFF)
	    || (subclass_mask != 0 && subclass_mask != 0xFF)
	    || (interface_mask != 0 && interface_mask != 0xFF)) {
		FUNC4("Can't handle masks in %s:%04X\n",
		     filename, class_mask);
		return 0;
	}

	FUNC0(alias, "bc", baseclass_mask == 0xFF, baseclass);
	FUNC0(alias, "sc", subclass_mask == 0xFF, subclass);
	FUNC0(alias, "i", interface_mask == 0xFF, interface);
	FUNC2(alias);
	return 1;
}