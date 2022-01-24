#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  mmio; int /*<<< orphan*/  irq; } ;
typedef  TYPE_1__ vortex_t ;
struct snd_device {TYPE_1__* device_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct snd_device *device)
{
	vortex_t *vortex = device->device_data;

	FUNC6(vortex);
	FUNC5(vortex);
	// Take down PCI interface.
	FUNC0(vortex->irq, vortex);
	FUNC1(vortex->mmio);
	FUNC4(vortex->pci_dev);
	FUNC3(vortex->pci_dev);
	FUNC2(vortex);

	return 0;
}