#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int max; } ;
struct thread_trace {int /*<<< orphan*/  syscall_stats; TYPE_1__ files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct thread_trace* FUNC1 (int) ; 

__attribute__((used)) static struct thread_trace *FUNC2(void)
{
	struct thread_trace *ttrace =  FUNC1(sizeof(struct thread_trace));

	if (ttrace) {
		ttrace->files.max = -1;
		ttrace->syscall_stats = FUNC0(NULL);
	}

	return ttrace;
}