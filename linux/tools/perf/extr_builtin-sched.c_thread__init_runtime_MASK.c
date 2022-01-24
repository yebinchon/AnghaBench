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
struct thread_runtime {int /*<<< orphan*/  run_stats; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,struct thread_runtime*) ; 
 struct thread_runtime* FUNC2 (int) ; 

__attribute__((used)) static struct thread_runtime *FUNC3(struct thread *thread)
{
	struct thread_runtime *r;

	r = FUNC2(sizeof(struct thread_runtime));
	if (!r)
		return NULL;

	FUNC0(&r->run_stats);
	FUNC1(thread, r);

	return r;
}