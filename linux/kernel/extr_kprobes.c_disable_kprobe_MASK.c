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
struct kprobe {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kprobe*) ; 
 int FUNC1 (struct kprobe*) ; 
 struct kprobe* FUNC2 (struct kprobe*) ; 
 int /*<<< orphan*/  kprobe_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct kprobe *kp)
{
	int ret = 0;
	struct kprobe *p;

	FUNC3(&kprobe_mutex);

	/* Disable this kprobe */
	p = FUNC2(kp);
	if (FUNC0(p))
		ret = FUNC1(p);

	FUNC4(&kprobe_mutex);
	return ret;
}