#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int dummy; } ;
struct snd_device {struct snd_card* device_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  next; } ;
struct snd_card {int /*<<< orphan*/  ctl_dev; int /*<<< orphan*/  controls_rwsem; TYPE_1__ controls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_card*,struct snd_kcontrol*) ; 
 struct snd_kcontrol* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_device *device)
{
	struct snd_card *card = device->device_data;
	struct snd_kcontrol *control;

	FUNC0(&card->controls_rwsem);
	while (!FUNC1(&card->controls)) {
		control = FUNC4(card->controls.next);
		FUNC3(card, control);
	}
	FUNC5(&card->controls_rwsem);
	FUNC2(&card->ctl_dev);
	return 0;
}