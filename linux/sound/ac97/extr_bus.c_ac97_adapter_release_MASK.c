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
struct ac97_controller {int /*<<< orphan*/  parent; int /*<<< orphan*/  adap; int /*<<< orphan*/  nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ac97_adapter_idr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ac97_controller* FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct ac97_controller *ac97_ctrl;

	ac97_ctrl = FUNC3(dev);
	FUNC2(&ac97_adapter_idr, ac97_ctrl->nr);
	FUNC0(&ac97_ctrl->adap, "adapter unregistered by %s\n",
		FUNC1(ac97_ctrl->parent));
}