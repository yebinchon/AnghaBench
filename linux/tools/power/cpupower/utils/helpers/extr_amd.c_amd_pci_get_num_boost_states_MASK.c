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
typedef  int uint8_t ;
struct pci_dev {int dummy; } ;
struct pci_access {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct pci_access*) ; 
 int FUNC1 (struct pci_dev*,int) ; 
 struct pci_dev* FUNC2 (struct pci_access**,int,int) ; 

int FUNC3(int *active, int *states)
{
	struct pci_access *pci_acc;
	struct pci_dev *device;
	uint8_t val = 0;

	*active = *states = 0;

	device = FUNC2(&pci_acc, 0x18, 4);

	if (device == NULL)
		return -ENODEV;

	val = FUNC1(device, 0x15c);
	if (val & 3)
		*active = 1;
	else
		*active = 0;
	*states = (val >> 2) & 7;

	FUNC0(pci_acc);
	return 0;
}