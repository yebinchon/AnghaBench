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
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct sigmadsp_control {int cached; int /*<<< orphan*/  num_bytes; int /*<<< orphan*/  cache; int /*<<< orphan*/  addr; } ;
struct sigmadsp {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sigmadsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sigmadsp* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct sigmadsp_control *ctrl = (void *)kcontrol->private_value;
	struct sigmadsp *sigmadsp = FUNC4(kcontrol);
	int ret = 0;

	FUNC1(&sigmadsp->lock);

	if (!ctrl->cached) {
		ret = FUNC3(sigmadsp, ctrl->addr, ctrl->cache,
			ctrl->num_bytes);
	}

	if (ret == 0) {
		ctrl->cached = true;
		FUNC0(ucontrol->value.bytes.data, ctrl->cache,
			ctrl->num_bytes);
	}

	FUNC2(&sigmadsp->lock);

	return ret;
}