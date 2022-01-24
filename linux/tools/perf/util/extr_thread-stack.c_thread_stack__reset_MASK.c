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
struct thread_stack {unsigned int arr_sz; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*,struct thread_stack*) ; 
 int /*<<< orphan*/  FUNC1 (struct thread_stack*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct thread *thread, struct thread_stack *ts)
{
	unsigned int arr_sz = ts->arr_sz;

	FUNC0(thread, ts);
	FUNC1(ts, 0, sizeof(*ts));
	ts->arr_sz = arr_sz;
}