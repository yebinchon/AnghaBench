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
struct hdac_bus {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AZX_GCTL_UNSOL ; 
 int /*<<< orphan*/  CORBCTL ; 
 int /*<<< orphan*/  GCTL ; 
 int /*<<< orphan*/  RIRBCTL ; 
 int /*<<< orphan*/  FUNC0 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct hdac_bus *bus)
{
	FUNC3(&bus->reg_lock);
	/* disable ringbuffer DMAs */
	FUNC2(bus, RIRBCTL, 0);
	FUNC2(bus, CORBCTL, 0);
	FUNC4(&bus->reg_lock);

	FUNC0(bus);

	FUNC3(&bus->reg_lock);
	/* disable unsolicited responses */
	FUNC1(bus, GCTL, AZX_GCTL_UNSOL, 0);
	FUNC4(&bus->reg_lock);
}