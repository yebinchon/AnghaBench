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
struct snd_tscm {int /*<<< orphan*/  dwork; int /*<<< orphan*/  hwdep_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  unit; } ;
struct ieee1394_device_id {int dummy; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct snd_tscm*) ; 
 struct snd_tscm* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_registration ; 
 int /*<<< orphan*/  FUNC3 (struct fw_unit*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_unit*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct fw_unit *unit,
			   const struct ieee1394_device_id *entry)
{
	struct snd_tscm *tscm;

	/* Allocate this independent of sound card instance. */
	tscm = FUNC2(&unit->device, sizeof(struct snd_tscm), GFP_KERNEL);
	if (!tscm)
		return -ENOMEM;
	tscm->unit = FUNC3(unit);
	FUNC1(&unit->device, tscm);

	FUNC5(&tscm->mutex);
	FUNC7(&tscm->lock);
	FUNC4(&tscm->hwdep_wait);

	/* Allocate and register this sound card later. */
	FUNC0(&tscm->dwork, do_registration);
	FUNC6(unit, &tscm->dwork);

	return 0;
}