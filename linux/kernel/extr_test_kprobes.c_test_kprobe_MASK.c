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

/* Variables and functions */
 int /*<<< orphan*/  handler_errors ; 
 int /*<<< orphan*/  kp ; 
 scalar_t__ posth_val ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ preh_val ; 
 int /*<<< orphan*/  rand1 ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void)
{
	int ret;

	ret = FUNC1(&kp);
	if (ret < 0) {
		FUNC0("register_kprobe returned %d\n", ret);
		return ret;
	}

	ret = FUNC2(rand1);
	FUNC3(&kp);

	if (preh_val == 0) {
		FUNC0("kprobe pre_handler not called\n");
		handler_errors++;
	}

	if (posth_val == 0) {
		FUNC0("kprobe post_handler not called\n");
		handler_errors++;
	}

	return 0;
}