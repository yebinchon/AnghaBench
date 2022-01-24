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
struct skl_dev {int pci_id; int /*<<< orphan*/  tplg_name; scalar_t__ nhlt; } ;
struct TYPE_2__ {char* oem_id; char* oem_table_id; int oem_revision; } ;
struct nhlt_acpi_table {TYPE_1__ header; } ;
struct hdac_bus {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hdac_bus* FUNC2 (struct skl_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int,char*,char*,int,char*) ; 

int FUNC4(struct skl_dev *skl)
{
	struct nhlt_acpi_table *nhlt = (struct nhlt_acpi_table *)skl->nhlt;
	struct hdac_bus *bus = FUNC2(skl);
	struct device *dev = bus->dev;

	FUNC0(dev, "oem_id %.6s, oem_table_id %.8s oem_revision %d\n",
		nhlt->header.oem_id, nhlt->header.oem_table_id,
		nhlt->header.oem_revision);

	FUNC3(skl->tplg_name, sizeof(skl->tplg_name), "%x-%.6s-%.8s-%d%s",
		skl->pci_id, nhlt->header.oem_id, nhlt->header.oem_table_id,
		nhlt->header.oem_revision, "-tplg.bin");

	FUNC1(skl->tplg_name);

	return 0;
}