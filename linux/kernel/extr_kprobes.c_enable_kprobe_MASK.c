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
struct kprobe {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KPROBE_FLAG_DISABLED ; 
 struct kprobe* FUNC0 (struct kprobe*) ; 
 int FUNC1 (struct kprobe*) ; 
 scalar_t__ FUNC2 (struct kprobe*) ; 
 scalar_t__ FUNC3 (struct kprobe*) ; 
 int /*<<< orphan*/  kprobe_mutex ; 
 int /*<<< orphan*/  kprobes_all_disarmed ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct kprobe *kp)
{
	int ret = 0;
	struct kprobe *p;

	FUNC4(&kprobe_mutex);

	/* Check whether specified probe is valid. */
	p = FUNC0(kp);
	if (FUNC6(p == NULL)) {
		ret = -EINVAL;
		goto out;
	}

	if (FUNC3(kp)) {
		/* This kprobe has gone, we couldn't enable it. */
		ret = -EINVAL;
		goto out;
	}

	if (p != kp)
		kp->flags &= ~KPROBE_FLAG_DISABLED;

	if (!kprobes_all_disarmed && FUNC2(p)) {
		p->flags &= ~KPROBE_FLAG_DISABLED;
		ret = FUNC1(p);
		if (ret)
			p->flags |= KPROBE_FLAG_DISABLED;
	}
out:
	FUNC5(&kprobe_mutex);
	return ret;
}