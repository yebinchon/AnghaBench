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
struct snd_dice {int /*<<< orphan*/  mutex; scalar_t__ registered; int /*<<< orphan*/  dwork; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct snd_dice* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_dice*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_dice*) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_unit*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct fw_unit *unit)
{
	struct snd_dice *dice = FUNC0(&unit->device);

	/* Postpone a workqueue for deferred registration. */
	if (!dice->registered)
		FUNC5(unit, &dice->dwork);

	/* The handler address register becomes initialized. */
	FUNC4(dice);

	/*
	 * After registration, userspace can start packet streaming, then this
	 * code block works fine.
	 */
	if (dice->registered) {
		FUNC1(&dice->mutex);
		FUNC3(dice);
		FUNC2(&dice->mutex);
	}
}