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
struct skl_dev {int /*<<< orphan*/  pci; } ;
struct hdac_bus {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AZX_PCIREG_TCSEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct hdac_bus* FUNC1 (struct skl_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct skl_dev *skl)
{
	struct hdac_bus *bus = FUNC1(skl);

	/*
	 * Clear bits 0-2 of PCI register TCSEL (at offset 0x44)
	 * TCSEL == Traffic Class Select Register, which sets PCI express QOS
	 * Ensuring these bits are 0 clears playback static on some HD Audio
	 * codecs.
	 * The PCI register TCSEL is defined in the Intel manuals.
	 */
	FUNC0(bus->dev, "Clearing TCSEL\n");
	FUNC2(skl->pci, AZX_PCIREG_TCSEL, 0x07, 0);
}