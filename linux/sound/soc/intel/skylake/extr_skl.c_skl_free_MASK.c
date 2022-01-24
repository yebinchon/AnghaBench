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
struct skl_dev {int /*<<< orphan*/  pci; scalar_t__ init_done; } ;
struct hdac_bus {scalar_t__ irq; scalar_t__ remap_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SND_SOC_HDAC_HDMI ; 
 int /*<<< orphan*/  HDA_CODEC_IDX_CONTROLLER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct skl_dev* FUNC1 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC7 (struct hdac_bus*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC9 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC10 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC11 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC12 (struct hdac_bus*) ; 

__attribute__((used)) static int FUNC13(struct hdac_bus *bus)
{
	struct skl_dev *skl  = FUNC1(bus);

	skl->init_done = 0; /* to be sure */

	FUNC9(bus);

	if (bus->irq >= 0)
		FUNC2(bus->irq, (void *)bus);
	FUNC6(bus);
	FUNC12(bus);
	FUNC11(bus);

	if (bus->remap_addr)
		FUNC3(bus->remap_addr);

	FUNC5(skl->pci);
	FUNC4(skl->pci);

	FUNC8(bus);

	if (FUNC0(CONFIG_SND_SOC_HDAC_HDMI)) {
		FUNC7(bus, HDA_CODEC_IDX_CONTROLLER, false);
		FUNC10(bus);
	}

	return 0;
}