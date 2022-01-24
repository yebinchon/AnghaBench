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
struct snd_motu_spec {int dummy; } ;
struct snd_motu {int /*<<< orphan*/  dwork; int /*<<< orphan*/  hwdep_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  mutex; struct snd_motu_spec const* spec; int /*<<< orphan*/  unit; } ;
struct ieee1394_device_id {scalar_t__ driver_data; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct snd_motu*) ; 
 struct snd_motu* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_registration ; 
 int /*<<< orphan*/  FUNC3 (struct fw_unit*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_unit*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct fw_unit *unit,
		      const struct ieee1394_device_id *entry)
{
	struct snd_motu *motu;

	/* Allocate this independently of sound card instance. */
	motu = FUNC2(&unit->device, sizeof(struct snd_motu), GFP_KERNEL);
	if (!motu)
		return -ENOMEM;
	motu->unit = FUNC3(unit);
	FUNC1(&unit->device, motu);

	motu->spec = (const struct snd_motu_spec *)entry->driver_data;
	FUNC5(&motu->mutex);
	FUNC7(&motu->lock);
	FUNC4(&motu->hwdep_wait);

	/* Allocate and register this sound card later. */
	FUNC0(&motu->dwork, do_registration);
	FUNC6(unit, &motu->dwork);

	return 0;
}