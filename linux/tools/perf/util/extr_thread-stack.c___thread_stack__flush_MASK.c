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
struct thread_stack {scalar_t__ cnt; int /*<<< orphan*/  last_time; struct call_return_processor* crp; } ;
struct thread {int dummy; } ;
struct call_return_processor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct thread*,struct thread_stack*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct thread *thread, struct thread_stack *ts)
{
	struct call_return_processor *crp = ts->crp;
	int err;

	if (!crp) {
		ts->cnt = 0;
		return 0;
	}

	while (ts->cnt) {
		err = FUNC1(thread, ts, --ts->cnt,
						ts->last_time, 0, true);
		if (err) {
			FUNC0("Error flushing thread stack!\n");
			ts->cnt = 0;
			return err;
		}
	}

	return 0;
}