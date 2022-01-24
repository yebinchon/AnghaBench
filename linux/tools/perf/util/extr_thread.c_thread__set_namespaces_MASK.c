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
struct thread {int /*<<< orphan*/  namespaces_lock; } ;
struct perf_record_namespaces {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct thread*,int /*<<< orphan*/ ,struct perf_record_namespaces*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct thread *thread, u64 timestamp,
			   struct perf_record_namespaces *event)
{
	int ret;

	FUNC1(&thread->namespaces_lock);
	ret = FUNC0(thread, timestamp, event);
	FUNC2(&thread->namespaces_lock);
	return ret;
}