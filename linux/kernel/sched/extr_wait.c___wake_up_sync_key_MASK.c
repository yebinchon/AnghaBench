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
struct wait_queue_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wait_queue_head*,unsigned int,int,int,void*) ; 
 scalar_t__ FUNC1 (int) ; 

void FUNC2(struct wait_queue_head *wq_head, unsigned int mode,
			int nr_exclusive, void *key)
{
	int wake_flags = 1; /* XXX WF_SYNC */

	if (FUNC1(!wq_head))
		return;

	if (FUNC1(nr_exclusive != 1))
		wake_flags = 0;

	FUNC0(wq_head, mode, nr_exclusive, wake_flags, key);
}