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
struct snd_motu {int /*<<< orphan*/  dwork; int /*<<< orphan*/  registered; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct snd_motu* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_unit*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_motu*) ; 

__attribute__((used)) static void FUNC3(struct fw_unit *unit)
{
	struct snd_motu *motu = FUNC0(&unit->device);

	/* Postpone a workqueue for deferred registration. */
	if (!motu->registered)
		FUNC1(unit, &motu->dwork);

	/* The handler address register becomes initialized. */
	FUNC2(motu);
}