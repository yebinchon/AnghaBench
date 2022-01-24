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
struct snd_efw {int /*<<< orphan*/  dwork; int /*<<< orphan*/  hwdep_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  unit; } ;
struct ieee1394_device_id {int dummy; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct snd_efw*) ; 
 struct snd_efw* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_registration ; 
 int /*<<< orphan*/  FUNC3 (struct fw_unit*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_unit*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct fw_unit *unit, const struct ieee1394_device_id *entry)
{
	struct snd_efw *efw;

	efw = FUNC2(&unit->device, sizeof(struct snd_efw), GFP_KERNEL);
	if (efw == NULL)
		return -ENOMEM;
	efw->unit = FUNC3(unit);
	FUNC1(&unit->device, efw);

	FUNC5(&efw->mutex);
	FUNC7(&efw->lock);
	FUNC4(&efw->hwdep_wait);

	/* Allocate and register this sound card later. */
	FUNC0(&efw->dwork, do_registration);
	FUNC6(unit, &efw->dwork);

	return 0;
}