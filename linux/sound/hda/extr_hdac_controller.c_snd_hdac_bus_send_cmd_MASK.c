#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * buf; } ;
struct TYPE_3__ {int /*<<< orphan*/ * cmds; } ;
struct hdac_bus {unsigned int* last_cmd; int /*<<< orphan*/  reg_lock; TYPE_2__ corb; TYPE_1__ rirb; } ;

/* Variables and functions */
 unsigned int AZX_MAX_CORB_ENTRIES ; 
 int /*<<< orphan*/  CORBRP ; 
 int /*<<< orphan*/  CORBWP ; 
 int EAGAIN ; 
 int EIO ; 
 size_t FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (struct hdac_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_bus*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct hdac_bus *bus, unsigned int val)
{
	unsigned int addr = FUNC0(val);
	unsigned int wp, rp;

	FUNC4(&bus->reg_lock);

	bus->last_cmd[FUNC0(val)] = val;

	/* add command to corb */
	wp = FUNC2(bus, CORBWP);
	if (wp == 0xffff) {
		/* something wrong, controller likely turned to D3 */
		FUNC5(&bus->reg_lock);
		return -EIO;
	}
	wp++;
	wp %= AZX_MAX_CORB_ENTRIES;

	rp = FUNC2(bus, CORBRP);
	if (wp == rp) {
		/* oops, it's full */
		FUNC5(&bus->reg_lock);
		return -EAGAIN;
	}

	bus->rirb.cmds[addr]++;
	bus->corb.buf[wp] = FUNC1(val);
	FUNC3(bus, CORBWP, wp);

	FUNC5(&bus->reg_lock);

	return 0;
}