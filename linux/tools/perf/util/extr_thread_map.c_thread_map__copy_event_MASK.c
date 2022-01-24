#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct perf_thread_map {int nr; int /*<<< orphan*/  refcnt; TYPE_1__* map; } ;
struct perf_record_thread_map {unsigned int nr; TYPE_2__* entries; } ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_4__ {int /*<<< orphan*/  comm; scalar_t__ pid; } ;
struct TYPE_3__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_thread_map*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct perf_thread_map *threads,
				   struct perf_record_thread_map *event)
{
	unsigned i;

	threads->nr = (int) event->nr;

	for (i = 0; i < event->nr; i++) {
		FUNC0(threads, i, (pid_t) event->entries[i].pid);
		threads->map[i].comm = FUNC2(event->entries[i].comm, 16);
	}

	FUNC1(&threads->refcnt, 1);
}