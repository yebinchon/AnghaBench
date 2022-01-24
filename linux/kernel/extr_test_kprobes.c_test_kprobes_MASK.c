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
struct kprobe {scalar_t__ flags; int /*<<< orphan*/ * addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  handler_errors ; 
 struct kprobe kp ; 
 struct kprobe kp2 ; 
 scalar_t__ posth_val ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ preh_val ; 
 int /*<<< orphan*/  rand1 ; 
 int FUNC1 (struct kprobe**,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kprobe**,int) ; 

__attribute__((used)) static int FUNC5(void)
{
	int ret;
	struct kprobe *kps[2] = {&kp, &kp2};

	/* addr and flags should be cleard for reusing kprobe. */
	kp.addr = NULL;
	kp.flags = 0;
	ret = FUNC1(kps, 2);
	if (ret < 0) {
		FUNC0("register_kprobes returned %d\n", ret);
		return ret;
	}

	preh_val = 0;
	posth_val = 0;
	ret = FUNC2(rand1);

	if (preh_val == 0) {
		FUNC0("kprobe pre_handler not called\n");
		handler_errors++;
	}

	if (posth_val == 0) {
		FUNC0("kprobe post_handler not called\n");
		handler_errors++;
	}

	preh_val = 0;
	posth_val = 0;
	ret = FUNC3(rand1);

	if (preh_val == 0) {
		FUNC0("kprobe pre_handler2 not called\n");
		handler_errors++;
	}

	if (posth_val == 0) {
		FUNC0("kprobe post_handler2 not called\n");
		handler_errors++;
	}

	FUNC4(kps, 2);
	return 0;

}