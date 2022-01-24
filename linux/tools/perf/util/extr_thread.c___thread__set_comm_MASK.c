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
typedef  int /*<<< orphan*/  u64 ;
struct thread {int /*<<< orphan*/  comm_lock; } ;

/* Variables and functions */
 int FUNC0 (struct thread*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct thread *thread, const char *str, u64 timestamp,
		       bool exec)
{
	int ret;

	FUNC1(&thread->comm_lock);
	ret = FUNC0(thread, str, timestamp, exec);
	FUNC2(&thread->comm_lock);
	return ret;
}