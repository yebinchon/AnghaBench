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
struct thread_trace {int /*<<< orphan*/  nr_events; } ;
struct thread {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_COLOR_RED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct thread_trace* FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static struct thread_trace *FUNC4(struct thread *thread, FILE *fp)
{
	struct thread_trace *ttrace;

	if (thread == NULL)
		goto fail;

	if (FUNC1(thread) == NULL)
		FUNC2(thread, FUNC3());

	if (FUNC1(thread) == NULL)
		goto fail;

	ttrace = FUNC1(thread);
	++ttrace->nr_events;

	return ttrace;
fail:
	FUNC0(fp, PERF_COLOR_RED,
		      "WARNING: not enough memory, dropping samples!\n");
	return NULL;
}