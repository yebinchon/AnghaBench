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
struct task_struct {int dummy; } ;
struct kthread {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**,int /*<<< orphan*/ *,int) ; 
 struct kthread* FUNC1 (struct task_struct*) ; 

void *FUNC2(struct task_struct *task)
{
	struct kthread *kthread = FUNC1(task);
	void *data = NULL;

	FUNC0(&data, &kthread->data, sizeof(data));
	return data;
}