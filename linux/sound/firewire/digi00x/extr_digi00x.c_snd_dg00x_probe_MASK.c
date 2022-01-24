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
struct snd_dg00x {int is_console; int /*<<< orphan*/  dwork; int /*<<< orphan*/  hwdep_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  unit; } ;
struct ieee1394_device_id {scalar_t__ model_id; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ MODEL_CONSOLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct snd_dg00x*) ; 
 struct snd_dg00x* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_registration ; 
 int /*<<< orphan*/  FUNC3 (struct fw_unit*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_unit*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct fw_unit *unit,
			   const struct ieee1394_device_id *entry)
{
	struct snd_dg00x *dg00x;

	/* Allocate this independent of sound card instance. */
	dg00x = FUNC2(&unit->device, sizeof(struct snd_dg00x),
			     GFP_KERNEL);
	if (!dg00x)
		return -ENOMEM;

	dg00x->unit = FUNC3(unit);
	FUNC1(&unit->device, dg00x);

	FUNC5(&dg00x->mutex);
	FUNC7(&dg00x->lock);
	FUNC4(&dg00x->hwdep_wait);

	dg00x->is_console = entry->model_id == MODEL_CONSOLE;

	/* Allocate and register this sound card later. */
	FUNC0(&dg00x->dwork, do_registration);
	FUNC6(unit, &dg00x->dwork);

	return 0;
}