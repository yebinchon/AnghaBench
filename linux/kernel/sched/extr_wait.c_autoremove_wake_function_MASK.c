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
struct wait_queue_entry {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int FUNC0 (struct wait_queue_entry*,unsigned int,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct wait_queue_entry *wq_entry, unsigned mode, int sync, void *key)
{
	int ret = FUNC0(wq_entry, mode, sync, key);

	if (ret)
		FUNC1(&wq_entry->entry);

	return ret;
}