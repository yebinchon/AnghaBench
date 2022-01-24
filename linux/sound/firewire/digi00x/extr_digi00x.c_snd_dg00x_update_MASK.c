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
struct snd_dg00x {int /*<<< orphan*/  mutex; scalar_t__ registered; int /*<<< orphan*/  dwork; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct snd_dg00x* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_dg00x*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_dg00x*) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_unit*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct fw_unit *unit)
{
	struct snd_dg00x *dg00x = FUNC0(&unit->device);

	/* Postpone a workqueue for deferred registration. */
	if (!dg00x->registered)
		FUNC5(unit, &dg00x->dwork);

	FUNC4(dg00x);

	/*
	 * After registration, userspace can start packet streaming, then this
	 * code block works fine.
	 */
	if (dg00x->registered) {
		FUNC1(&dg00x->mutex);
		FUNC3(dg00x);
		FUNC2(&dg00x->mutex);
	}
}