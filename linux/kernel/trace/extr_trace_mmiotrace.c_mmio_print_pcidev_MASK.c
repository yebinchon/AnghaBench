#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct trace_seq {int dummy; } ;
struct pci_driver {unsigned long long name; } ;
struct pci_dev {TYPE_2__* resource; int /*<<< orphan*/  irq; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
typedef  int resource_size_t ;
struct TYPE_4__ {int start; int flags; int end; } ;
struct TYPE_3__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int PCI_REGION_FLAG_MASK ; 
 struct pci_driver* FUNC0 (struct pci_dev const*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char*) ; 

__attribute__((used)) static void FUNC3(struct trace_seq *s, const struct pci_dev *dev)
{
	int i;
	resource_size_t start, end;
	const struct pci_driver *drv = FUNC0(dev);

	FUNC1(s, "PCIDEV %02x%02x %04x%04x %x",
			 dev->bus->number, dev->devfn,
			 dev->vendor, dev->device, dev->irq);
	for (i = 0; i < 7; i++) {
		start = dev->resource[i].start;
		FUNC1(s, " %llx",
			(unsigned long long)(start |
			(dev->resource[i].flags & PCI_REGION_FLAG_MASK)));
	}
	for (i = 0; i < 7; i++) {
		start = dev->resource[i].start;
		end = dev->resource[i].end;
		FUNC1(s, " %llx",
			dev->resource[i].start < dev->resource[i].end ?
			(unsigned long long)(end - start) + 1 : 0);
	}
	if (drv)
		FUNC1(s, " %s\n", drv->name);
	else
		FUNC2(s, " \n");
}