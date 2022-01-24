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
struct snd_efw {int /*<<< orphan*/  mutex; scalar_t__ registered; int /*<<< orphan*/  unit; int /*<<< orphan*/  dwork; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct snd_efw* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_efw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_unit*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct fw_unit *unit)
{
	struct snd_efw *efw = FUNC0(&unit->device);

	/* Postpone a workqueue for deferred registration. */
	if (!efw->registered)
		FUNC5(unit, &efw->dwork);

	FUNC4(efw->unit);

	/*
	 * After registration, userspace can start packet streaming, then this
	 * code block works fine.
	 */
	if (efw->registered) {
		FUNC1(&efw->mutex);
		FUNC3(efw);
		FUNC2(&efw->mutex);
	}
}