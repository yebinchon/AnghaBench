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
struct ramoops_context {int max_dump_cnt; int max_ftrace_cnt; int /*<<< orphan*/ * fprzs; int /*<<< orphan*/ * dprzs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ramoops_context *cxt)
{
	int i;

	/* Free dump PRZs */
	if (cxt->dprzs) {
		for (i = 0; i < cxt->max_dump_cnt; i++)
			FUNC1(cxt->dprzs[i]);

		FUNC0(cxt->dprzs);
		cxt->max_dump_cnt = 0;
	}

	/* Free ftrace PRZs */
	if (cxt->fprzs) {
		for (i = 0; i < cxt->max_ftrace_cnt; i++)
			FUNC1(cxt->fprzs[i]);
		FUNC0(cxt->fprzs);
		cxt->max_ftrace_cnt = 0;
	}
}