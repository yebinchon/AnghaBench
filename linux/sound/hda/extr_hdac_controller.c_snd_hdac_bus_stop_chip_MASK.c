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
struct TYPE_2__ {scalar_t__ addr; } ;
struct hdac_bus {int chip_init; TYPE_1__ posbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPLBASE ; 
 int /*<<< orphan*/  DPUBASE ; 
 int /*<<< orphan*/  FUNC0 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct hdac_bus *bus)
{
	if (!bus->chip_init)
		return;

	/* disable interrupts */
	FUNC1(bus);
	FUNC0(bus);

	/* disable CORB/RIRB */
	FUNC2(bus);

	/* disable position buffer */
	if (bus->posbuf.addr) {
		FUNC3(bus, DPLBASE, 0);
		FUNC3(bus, DPUBASE, 0);
	}

	bus->chip_init = false;
}