#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct skl_dev {int pci_id; scalar_t__ nhlt; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {char* oem_id; char* oem_table_id; int oem_revision; } ;
struct nhlt_acpi_table {TYPE_1__ header; } ;
struct hdac_bus {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct skl_dev* FUNC0 (struct hdac_bus*) ; 
 struct hdac_bus* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 struct pci_dev* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			struct device_attribute *attr, char *buf)
{
	struct pci_dev *pci = FUNC4(dev);
	struct hdac_bus *bus = FUNC1(pci);
	struct skl_dev *skl = FUNC0(bus);
	struct nhlt_acpi_table *nhlt = (struct nhlt_acpi_table *)skl->nhlt;
	char platform_id[32];

	FUNC3(platform_id, "%x-%.6s-%.8s-%d", skl->pci_id,
			nhlt->header.oem_id, nhlt->header.oem_table_id,
			nhlt->header.oem_revision);

	FUNC2(platform_id);
	return FUNC3(buf, "%s\n", platform_id);
}