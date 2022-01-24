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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  event_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  uprobe_buffer_refcnt ; 

__attribute__((used)) static int FUNC3(void)
{
	int ret = 0;

	FUNC0(!FUNC1(&event_mutex));

	if (uprobe_buffer_refcnt++ == 0) {
		ret = FUNC2();
		if (ret < 0)
			uprobe_buffer_refcnt--;
	}

	return ret;
}