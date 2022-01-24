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
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct hdac_bus {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct pci_dev* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, int subtype, void *data)
{
	struct hdac_bus *bus = data;
	struct pci_dev *pci, *master;

	if (!FUNC0(dev) || !FUNC0(bus->dev))
		return 0;
	master = FUNC1(bus->dev);
	pci = FUNC1(dev);
	return master->bus == pci->bus;
}