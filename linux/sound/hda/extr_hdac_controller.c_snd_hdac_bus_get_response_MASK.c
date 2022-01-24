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
struct TYPE_2__ {unsigned int* res; int /*<<< orphan*/ * cmds; } ;
struct hdac_bus {int /*<<< orphan*/  reg_lock; TYPE_1__ rirb; scalar_t__ polling_mode; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(struct hdac_bus *bus, unsigned int addr,
			      unsigned int *res)
{
	unsigned long timeout;
	unsigned long loopcounter;

	timeout = jiffies + FUNC1(1000);

	for (loopcounter = 0;; loopcounter++) {
		FUNC4(&bus->reg_lock);
		if (bus->polling_mode)
			FUNC3(bus);
		if (!bus->rirb.cmds[addr]) {
			if (res)
				*res = bus->rirb.res[addr]; /* the last value */
			FUNC5(&bus->reg_lock);
			return 0;
		}
		FUNC5(&bus->reg_lock);
		if (FUNC6(jiffies, timeout))
			break;
		if (loopcounter > 3000)
			FUNC2(2); /* temporary workaround */
		else {
			FUNC7(10);
			FUNC0();
		}
	}

	return -EIO;
}