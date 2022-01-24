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
struct kprobe {int /*<<< orphan*/ * addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kprobe*) ; 
 scalar_t__ FUNC1 (struct kprobe*) ; 
 int /*<<< orphan*/  kprobe_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct kprobe **kps, int num)
{
	int i;

	if (num <= 0)
		return;
	FUNC2(&kprobe_mutex);
	for (i = 0; i < num; i++)
		if (FUNC1(kps[i]) < 0)
			kps[i]->addr = NULL;
	FUNC3(&kprobe_mutex);

	FUNC4();
	for (i = 0; i < num; i++)
		if (kps[i]->addr)
			FUNC0(kps[i]);
}