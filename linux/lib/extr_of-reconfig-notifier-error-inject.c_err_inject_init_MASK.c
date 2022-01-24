#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  nb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dir ; 
 int /*<<< orphan*/  notifier_err_inject_dir ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  priority ; 
 TYPE_1__ reconfig_err_inject ; 

__attribute__((used)) static int FUNC5(void)
{
	int err;

	dir = FUNC3("OF-reconfig",
		notifier_err_inject_dir, &reconfig_err_inject, priority);
	if (FUNC0(dir))
		return FUNC1(dir);

	err = FUNC4(&reconfig_err_inject.nb);
	if (err)
		FUNC2(dir);

	return err;
}