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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct hdac_bus {int chip_init; TYPE_1__ posbuf; scalar_t__ use_posbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPLBASE ; 
 int /*<<< orphan*/  DPUBASE ; 
 int /*<<< orphan*/  FUNC0 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_bus*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hdac_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

bool FUNC6(struct hdac_bus *bus, bool full_reset)
{
	if (bus->chip_init)
		return false;

	/* reset controller */
	FUNC3(bus, full_reset);

	/* clear interrupts */
	FUNC0(bus);

	/* initialize the codec command I/O */
	FUNC2(bus);

	/* enable interrupts after CORB/RIRB buffers are initialized above */
	FUNC1(bus);

	/* program the position buffer */
	if (bus->use_posbuf && bus->posbuf.addr) {
		FUNC4(bus, DPLBASE, (u32)bus->posbuf.addr);
		FUNC4(bus, DPUBASE, FUNC5(bus->posbuf.addr));
	}

	bus->chip_init = true;
	return true;
}