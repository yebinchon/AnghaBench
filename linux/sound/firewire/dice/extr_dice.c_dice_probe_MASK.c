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
struct snd_dice {int /*<<< orphan*/  dwork; int /*<<< orphan*/  hwdep_wait; int /*<<< orphan*/  clock_accepted; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; scalar_t__ detect_formats; int /*<<< orphan*/  unit; } ;
struct ieee1394_device_id {scalar_t__ vendor_id; scalar_t__ driver_data; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;
typedef  scalar_t__ snd_dice_detect_formats_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ OUI_SSL ; 
 int FUNC1 (struct fw_unit*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct snd_dice*) ; 
 struct snd_dice* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_registration ; 
 int /*<<< orphan*/  FUNC4 (struct fw_unit*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ snd_dice_stream_detect_current_formats ; 
 int /*<<< orphan*/  FUNC8 (struct fw_unit*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct fw_unit *unit,
		      const struct ieee1394_device_id *entry)
{
	struct snd_dice *dice;
	int err;

	if (!entry->driver_data && entry->vendor_id != OUI_SSL) {
		err = FUNC1(unit);
		if (err < 0)
			return -ENODEV;
	}

	/* Allocate this independent of sound card instance. */
	dice = FUNC3(&unit->device, sizeof(struct snd_dice), GFP_KERNEL);
	if (!dice)
		return -ENOMEM;
	dice->unit = FUNC4(unit);
	FUNC2(&unit->device, dice);

	if (!entry->driver_data) {
		dice->detect_formats = snd_dice_stream_detect_current_formats;
	} else {
		dice->detect_formats =
				(snd_dice_detect_formats_t)entry->driver_data;
	}

	FUNC9(&dice->lock);
	FUNC7(&dice->mutex);
	FUNC5(&dice->clock_accepted);
	FUNC6(&dice->hwdep_wait);

	/* Allocate and register this sound card later. */
	FUNC0(&dice->dwork, do_registration);
	FUNC8(unit, &dice->dwork);

	return 0;
}