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
struct hdac_bus {TYPE_1__* ops; scalar_t__ sync_write; } ;
struct TYPE_2__ {int (* command ) (struct hdac_bus*,unsigned int) ;int (* get_response ) (struct hdac_bus*,unsigned int,unsigned int*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int FUNC0 (struct hdac_bus*,unsigned int) ; 
 int FUNC1 (struct hdac_bus*,unsigned int,unsigned int*) ; 
 int FUNC2 (struct hdac_bus*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_bus*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct hdac_bus*,unsigned int) ; 

int FUNC5(struct hdac_bus *bus, unsigned int addr,
				    unsigned int cmd, unsigned int *res)
{
	unsigned int tmp;
	int err;

	if (cmd == ~0)
		return -EINVAL;

	if (res)
		*res = -1;
	else if (bus->sync_write)
		res = &tmp;
	for (;;) {
		FUNC4(bus, cmd);
		err = bus->ops->command(bus, cmd);
		if (err != -EAGAIN)
			break;
		/* process pending verbs */
		err = bus->ops->get_response(bus, addr, &tmp);
		if (err)
			break;
	}
	if (!err && res) {
		err = bus->ops->get_response(bus, addr, res);
		FUNC3(bus, addr, *res);
	}
	return err;
}