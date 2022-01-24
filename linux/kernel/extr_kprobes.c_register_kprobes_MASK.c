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
 int EINVAL ; 
 int FUNC0 (struct kprobe*) ; 
 int /*<<< orphan*/  FUNC1 (struct kprobe**,int) ; 

int FUNC2(struct kprobe **kps, int num)
{
	int i, ret = 0;

	if (num <= 0)
		return -EINVAL;
	for (i = 0; i < num; i++) {
		ret = FUNC0(kps[i]);
		if (ret < 0) {
			if (i > 0)
				FUNC1(kps, i);
			break;
		}
	}
	return ret;
}