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
struct skl_dev {int /*<<< orphan*/  nhlt; int /*<<< orphan*/  probe_work; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hdac_bus {int dummy; } ;

/* Variables and functions */
 struct skl_dev* FUNC0 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct hdac_bus* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct skl_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct skl_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC9 (struct skl_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct skl_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct skl_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct hdac_bus*) ; 

__attribute__((used)) static void FUNC14(struct pci_dev *pci)
{
	struct hdac_bus *bus = FUNC4(pci);
	struct skl_dev *skl = FUNC0(bus);

	FUNC1(&skl->probe_work);

	FUNC5(&pci->dev);

	/* codec removal, invoke bus_device_remove */
	FUNC13(bus);

	FUNC12(&pci->dev);
	FUNC9(skl);
	FUNC10(skl);
	FUNC7(skl);
	FUNC6(skl);
	FUNC11(skl);
	FUNC3(skl->nhlt);
	FUNC8(bus);
	FUNC2(&pci->dev, NULL);
}