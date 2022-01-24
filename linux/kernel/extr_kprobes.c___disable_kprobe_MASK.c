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
 struct kprobe* FUNC0 (int) ; 
 int /*<<< orphan*/  KPROBE_FLAG_DISABLED ; 
 struct kprobe* FUNC1 (struct kprobe*) ; 
 scalar_t__ FUNC2 (struct kprobe*) ; 
 int FUNC3 (struct kprobe*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kprobe*) ; 
 int /*<<< orphan*/  kprobes_all_disarmed ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct kprobe *FUNC6(struct kprobe *p)
{
	struct kprobe *orig_p;
	int ret;

	/* Get an original kprobe for return */
	orig_p = FUNC1(p);
	if (FUNC5(orig_p == NULL))
		return FUNC0(-EINVAL);

	if (!FUNC4(p)) {
		/* Disable probe if it is a child probe */
		if (p != orig_p)
			p->flags |= KPROBE_FLAG_DISABLED;

		/* Try to disarm and disable this/parent probe */
		if (p == orig_p || FUNC2(orig_p)) {
			/*
			 * If kprobes_all_disarmed is set, orig_p
			 * should have already been disarmed, so
			 * skip unneed disarming process.
			 */
			if (!kprobes_all_disarmed) {
				ret = FUNC3(orig_p, true);
				if (ret) {
					p->flags &= ~KPROBE_FLAG_DISABLED;
					return FUNC0(ret);
				}
			}
			orig_p->flags |= KPROBE_FLAG_DISABLED;
		}
	}

	return orig_p;
}