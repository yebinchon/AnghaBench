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
struct smp_hotplug_thread {int /*<<< orphan*/  selfparking; int /*<<< orphan*/  store; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 struct task_struct** FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct smp_hotplug_thread *ht, unsigned int cpu)
{
	struct task_struct *tsk = *FUNC1(ht->store, cpu);

	if (tsk && !ht->selfparking)
		FUNC0(tsk);
}