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
struct snd_ff_spec {int dummy; } ;
struct snd_ff {int /*<<< orphan*/  dwork; struct snd_ff_spec const* spec; int /*<<< orphan*/  hwdep_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  unit; } ;
struct ieee1394_device_id {scalar_t__ driver_data; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct snd_ff*) ; 
 struct snd_ff* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_registration ; 
 int /*<<< orphan*/  FUNC3 (struct fw_unit*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_unit*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct fw_unit *unit,
			   const struct ieee1394_device_id *entry)
{
	struct snd_ff *ff;

	ff = FUNC2(&unit->device, sizeof(struct snd_ff), GFP_KERNEL);
	if (!ff)
		return -ENOMEM;
	ff->unit = FUNC3(unit);
	FUNC1(&unit->device, ff);

	FUNC5(&ff->mutex);
	FUNC7(&ff->lock);
	FUNC4(&ff->hwdep_wait);

	ff->spec = (const struct snd_ff_spec *)entry->driver_data;

	/* Register this sound card later. */
	FUNC0(&ff->dwork, do_registration);
	FUNC6(unit, &ff->dwork);

	return 0;
}