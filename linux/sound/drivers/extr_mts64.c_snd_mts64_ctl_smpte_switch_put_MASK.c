#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct mts64 {int smpte_switch; int /*<<< orphan*/  lock; TYPE_3__* pardev; int /*<<< orphan*/  fps; int /*<<< orphan*/ * time; } ;
struct TYPE_6__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mts64* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol* kctl,
					  struct snd_ctl_elem_value *uctl)
{
	struct mts64 *mts = FUNC2(kctl);
	int changed = 0;
	int val = !!uctl->value.integer.value[0];

	FUNC3(&mts->lock);
	if (mts->smpte_switch == val)
		goto __out;

	changed = 1;
	mts->smpte_switch = val;
	if (mts->smpte_switch) {
		FUNC0(mts->pardev->port,
				  mts->time[0], mts->time[1],
				  mts->time[2], mts->time[3],
				  mts->fps);
	} else {
		FUNC1(mts->pardev->port);
	}
__out:
	FUNC4(&mts->lock);
	return changed;
}