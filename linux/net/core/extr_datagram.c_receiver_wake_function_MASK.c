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
typedef  int /*<<< orphan*/  wait_queue_entry_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLIN ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned int,int,void*) ; 
 int FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(wait_queue_entry_t *wait, unsigned int mode, int sync,
				  void *key)
{
	/*
	 * Avoid a wakeup if event not interesting for us
	 */
	if (key && !(FUNC1(key) & (EPOLLIN | EPOLLERR)))
		return 0;
	return FUNC0(wait, mode, sync, key);
}