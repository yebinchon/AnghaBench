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
struct snd_oxfw {TYPE_1__* entry; int /*<<< orphan*/  mutex; scalar_t__ registered; int /*<<< orphan*/  unit; int /*<<< orphan*/  dwork; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {scalar_t__ vendor_id; } ;

/* Variables and functions */
 scalar_t__ OUI_STANTON ; 
 struct snd_oxfw* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_unit*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_oxfw*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_oxfw*) ; 

__attribute__((used)) static void FUNC7(struct fw_unit *unit)
{
	struct snd_oxfw *oxfw = FUNC0(&unit->device);

	if (!oxfw->registered)
		FUNC4(unit, &oxfw->dwork);

	FUNC1(oxfw->unit);

	if (oxfw->registered) {
		FUNC2(&oxfw->mutex);
		FUNC6(oxfw);
		FUNC3(&oxfw->mutex);

		if (oxfw->entry->vendor_id == OUI_STANTON)
			FUNC5(oxfw);
	}
}