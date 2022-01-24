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
struct hdac_bus {int /*<<< orphan*/  cmd_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hdac_bus*,unsigned int,unsigned int,unsigned int*) ; 

int FUNC3(struct hdac_bus *bus, unsigned int addr,
			   unsigned int cmd, unsigned int *res)
{
	int err;

	FUNC0(&bus->cmd_mutex);
	err = FUNC2(bus, addr, cmd, res);
	FUNC1(&bus->cmd_mutex);
	return err;
}