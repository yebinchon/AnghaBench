#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sst_data {int /*<<< orphan*/  lock; } ;
struct sst_algo_control {int type; TYPE_4__* w; int /*<<< orphan*/  max; int /*<<< orphan*/  params; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct snd_kcontrol {TYPE_1__ id; scalar_t__ private_value; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct TYPE_7__ {TYPE_2__ bytes; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct TYPE_8__ {scalar_t__ power; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SST_ALGO_PARAMS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sst_data* FUNC5 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC6 (struct snd_kcontrol*) ; 
 int FUNC7 (struct sst_data*,struct sst_algo_control*) ; 

__attribute__((used)) static int FUNC8(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	int ret = 0;
	struct snd_soc_component *cmpnt = FUNC6(kcontrol);
	struct sst_data *drv = FUNC5(cmpnt);
	struct sst_algo_control *bc = (void *)kcontrol->private_value;

	FUNC0(cmpnt->dev, "control_name=%s\n", kcontrol->id.name);
	FUNC3(&drv->lock);
	switch (bc->type) {
	case SST_ALGO_PARAMS:
		FUNC2(bc->params, ucontrol->value.bytes.data, bc->max);
		break;
	default:
		FUNC4(&drv->lock);
		FUNC1(cmpnt->dev, "Invalid Input- algo type:%d\n",
				bc->type);
		return -EINVAL;
	}
	/*if pipe is enabled, need to send the algo params from here*/
	if (bc->w && bc->w->power)
		ret = FUNC7(drv, bc);
	FUNC4(&drv->lock);

	return ret;
}