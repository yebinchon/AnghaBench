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
struct thread_stack {int dummy; } ;
struct thread {struct thread_stack* ts; } ;

/* Variables and functions */
 struct thread_stack* FUNC0 (struct thread*,int) ; 
 scalar_t__ FUNC1 (struct thread*) ; 

__attribute__((used)) static inline struct thread_stack *FUNC2(struct thread *thread,
						    int cpu)
{
	if (!thread)
		return NULL;

	if (FUNC1(thread))
		return FUNC0(thread, cpu);

	return thread->ts;
}