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
struct TYPE_2__ {scalar_t__ chip_init; } ;
struct hda_bus {int in_reset; TYPE_1__ core; } ;
struct azx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct azx*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct azx*) ; 
 struct azx* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_bus*) ; 

void FUNC4(struct hda_bus *bus)
{
	struct azx *chip = FUNC2(&bus->core);

	bus->in_reset = 1;
	FUNC1(chip);
	FUNC0(chip, true);
	if (bus->core.chip_init)
		FUNC3(bus);
	bus->in_reset = 0;
}