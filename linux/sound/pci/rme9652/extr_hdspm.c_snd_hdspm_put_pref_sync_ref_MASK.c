#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct hdspm {int texts_autosync_items; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct hdspm*) ; 
 scalar_t__ FUNC1 (struct hdspm*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hdspm*) ; 
 struct hdspm* FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
				       struct snd_ctl_elem_value *ucontrol)
{
	struct hdspm *hdspm = FUNC3(kcontrol);
	int val, change = 0;

	if (!FUNC2(hdspm))
		return -EBUSY;

	val = ucontrol->value.enumerated.item[0];

	if (val < 0)
		val = 0;
	else if (val >= hdspm->texts_autosync_items)
		val = hdspm->texts_autosync_items-1;

	FUNC4(&hdspm->lock);
	if (val != FUNC0(hdspm))
		change = (0 == FUNC1(hdspm, val)) ? 1 : 0;

	FUNC5(&hdspm->lock);
	return change;
}