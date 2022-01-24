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
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdspm {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct hdspm*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdspm*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct hdspm*) ; 
 struct hdspm* FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
				      struct snd_ctl_elem_value *ucontrol)
{
	struct hdspm *hdspm = FUNC3(kcontrol);
	int change;
	unsigned int val;

	if (!FUNC2(hdspm))
		return -EBUSY;
	val = ucontrol->value.integer.value[0] & 1;
	FUNC4(&hdspm->lock);
	change = (int) val != FUNC0(hdspm);
	FUNC1(hdspm, val);
	FUNC5(&hdspm->lock);
	return change;
}