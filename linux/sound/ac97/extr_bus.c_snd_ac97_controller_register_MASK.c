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
struct device {int dummy; } ;
struct ac97_controller_ops {int dummy; } ;
struct ac97_controller {unsigned short slots_available; struct device* parent; struct ac97_controller_ops const* ops; void** codecs_pdata; } ;

/* Variables and functions */
 int AC97_BUS_MAX_CODECS ; 
 int ENOMEM ; 
 struct ac97_controller* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct ac97_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct ac97_controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct ac97_controller*) ; 
 int /*<<< orphan*/  FUNC4 (struct ac97_controller*) ; 
 struct ac97_controller* FUNC5 (int,int /*<<< orphan*/ ) ; 

struct ac97_controller *FUNC6(
	const struct ac97_controller_ops *ops, struct device *dev,
	unsigned short slots_available, void **codecs_pdata)
{
	struct ac97_controller *ac97_ctrl;
	int ret, i;

	ac97_ctrl = FUNC5(sizeof(*ac97_ctrl), GFP_KERNEL);
	if (!ac97_ctrl)
		return FUNC0(-ENOMEM);

	for (i = 0; i < AC97_BUS_MAX_CODECS && codecs_pdata; i++)
		ac97_ctrl->codecs_pdata[i] = codecs_pdata[i];

	ac97_ctrl->ops = ops;
	ac97_ctrl->slots_available = slots_available;
	ac97_ctrl->parent = dev;
	ret = FUNC1(ac97_ctrl);

	if (ret)
		goto err;
	FUNC2(ac97_ctrl);
	FUNC3(ac97_ctrl);

	return ac97_ctrl;
err:
	FUNC4(ac97_ctrl);
	return FUNC0(ret);
}