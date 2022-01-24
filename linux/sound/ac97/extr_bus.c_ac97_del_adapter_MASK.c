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
struct ac97_controller {int /*<<< orphan*/  adap; int /*<<< orphan*/  controllers; } ;

/* Variables and functions */
 int /*<<< orphan*/  ac97_controllers_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct ac97_controller*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ac97_controller *ac97_ctrl)
{
	FUNC3(&ac97_controllers_mutex);
	FUNC0(ac97_ctrl);
	FUNC2(&ac97_ctrl->controllers);
	FUNC4(&ac97_controllers_mutex);

	FUNC1(&ac97_ctrl->adap);
}