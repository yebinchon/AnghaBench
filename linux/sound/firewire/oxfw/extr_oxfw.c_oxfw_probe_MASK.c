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
struct snd_oxfw {int /*<<< orphan*/  dwork; int /*<<< orphan*/  hwdep_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  mutex; struct ieee1394_device_id const* entry; int /*<<< orphan*/  unit; } ;
struct ieee1394_device_id {scalar_t__ vendor_id; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ VENDOR_LOUD ; 
 int /*<<< orphan*/  FUNC1 (struct fw_unit*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct snd_oxfw*) ; 
 struct snd_oxfw* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_registration ; 
 int /*<<< orphan*/  FUNC4 (struct fw_unit*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fw_unit*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct fw_unit *unit,
		      const struct ieee1394_device_id *entry)
{
	struct snd_oxfw *oxfw;

	if (entry->vendor_id == VENDOR_LOUD && !FUNC1(unit))
		return -ENODEV;

	/* Allocate this independent of sound card instance. */
	oxfw = FUNC3(&unit->device, sizeof(struct snd_oxfw), GFP_KERNEL);
	if (!oxfw)
		return -ENOMEM;
	oxfw->unit = FUNC4(unit);
	FUNC2(&unit->device, oxfw);

	oxfw->entry = entry;
	FUNC6(&oxfw->mutex);
	FUNC8(&oxfw->lock);
	FUNC5(&oxfw->hwdep_wait);

	/* Allocate and register this sound card later. */
	FUNC0(&oxfw->dwork, do_registration);
	FUNC7(unit, &oxfw->dwork);

	return 0;
}