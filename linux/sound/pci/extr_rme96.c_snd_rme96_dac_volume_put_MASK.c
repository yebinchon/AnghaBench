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
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct rme96 {unsigned int* vol; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (struct rme96*) ; 
 int /*<<< orphan*/  FUNC1 (struct rme96*) ; 
 struct rme96* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (struct rme96*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *u)
{
	struct rme96 *rme96 = FUNC2(kcontrol);
        int change = 0;
	unsigned int vol, maxvol;


	if (!FUNC1(rme96))
		return -EINVAL;
	maxvol = FUNC0(rme96);
	FUNC4(&rme96->lock);
	vol = u->value.integer.value[0];
	if (vol != rme96->vol[0] && vol <= maxvol) {
		rme96->vol[0] = vol;
		change = 1;
	}
	vol = u->value.integer.value[1];
	if (vol != rme96->vol[1] && vol <= maxvol) {
		rme96->vol[1] = vol;
		change = 1;
	}
	if (change)
		FUNC3(rme96);
	FUNC5(&rme96->lock);

        return change;
}