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
struct snd_ff {scalar_t__ registered; int /*<<< orphan*/  dwork; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct snd_ff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ff*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ff*) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_unit*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct fw_unit *unit)
{
	struct snd_ff *ff = FUNC0(&unit->device);

	/* Postpone a workqueue for deferred registration. */
	if (!ff->registered)
		FUNC3(unit, &ff->dwork);

	FUNC2(ff);

	if (ff->registered)
		FUNC1(ff);
}