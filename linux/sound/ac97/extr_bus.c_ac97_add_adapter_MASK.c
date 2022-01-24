#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  parent; int /*<<< orphan*/ * type; } ;
struct ac97_controller {int nr; int /*<<< orphan*/  parent; TYPE_1__ adap; int /*<<< orphan*/  controllers; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ac97_adapter_idr ; 
 int /*<<< orphan*/  ac97_adapter_type ; 
 int /*<<< orphan*/  ac97_controllers ; 
 int /*<<< orphan*/  ac97_controllers_mutex ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ac97_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct ac97_controller *ac97_ctrl)
{
	int ret;

	FUNC6(&ac97_controllers_mutex);
	ret = FUNC4(&ac97_adapter_idr, ac97_ctrl, 0, 0, GFP_KERNEL);
	ac97_ctrl->nr = ret;
	if (ret >= 0) {
		FUNC2(&ac97_ctrl->adap, "ac97-%d", ret);
		ac97_ctrl->adap.type = &ac97_adapter_type;
		ac97_ctrl->adap.parent = ac97_ctrl->parent;
		ret = FUNC3(&ac97_ctrl->adap);
		if (ret)
			FUNC8(&ac97_ctrl->adap);
	}
	if (!ret)
		FUNC5(&ac97_ctrl->controllers, &ac97_controllers);
	FUNC7(&ac97_controllers_mutex);

	if (!ret)
		FUNC0(&ac97_ctrl->adap, "adapter registered by %s\n",
			FUNC1(ac97_ctrl->parent));
	return ret;
}