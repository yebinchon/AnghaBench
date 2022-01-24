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
union map_priv {int color; int /*<<< orphan*/  ptr; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  color_pids; } ;
struct perf_sched {TYPE_1__ map; } ;
struct machine {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 struct thread* FUNC0 (struct machine*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct thread*
FUNC4(struct perf_sched *sched, struct machine *machine, pid_t pid, pid_t tid)
{
	struct thread *thread = FUNC0(machine, pid, tid);
	union map_priv priv = {
		.color = false,
	};

	if (!sched->map.color_pids || !thread || FUNC1(thread))
		return thread;

	if (FUNC3(sched->map.color_pids, tid))
		priv.color = true;

	FUNC2(thread, priv.ptr);
	return thread;
}