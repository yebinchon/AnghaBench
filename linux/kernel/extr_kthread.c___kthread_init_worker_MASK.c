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
struct lock_class_key {int dummy; } ;
struct kthread_worker {int /*<<< orphan*/  delayed_work_list; int /*<<< orphan*/  work_list; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct lock_class_key*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct kthread_worker*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct kthread_worker *worker,
				const char *name,
				struct lock_class_key *key)
{
	FUNC2(worker, 0, sizeof(struct kthread_worker));
	FUNC3(&worker->lock);
	FUNC1(&worker->lock, key, name);
	FUNC0(&worker->work_list);
	FUNC0(&worker->delayed_work_list);
}