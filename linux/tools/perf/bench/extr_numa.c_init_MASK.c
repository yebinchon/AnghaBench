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
struct TYPE_3__ {scalar_t__ nr_nodes; int show_details; long mb_global; long mb_proc; long mb_proc_locked; long mb_thread; int nr_threads; int nr_proc; int nr_tasks; long bytes_global; long bytes_process; long bytes_process_locked; long bytes_thread; scalar_t__ mb_thread_str; scalar_t__ mb_proc_locked_str; scalar_t__ mb_proc_str; scalar_t__ mb_global_str; scalar_t__ show_quiet; int /*<<< orphan*/  nr_cpus; } ;
struct TYPE_4__ {int /*<<< orphan*/  stop_work_mutex; int /*<<< orphan*/  startup_done_mutex; int /*<<< orphan*/  startup_mutex; int /*<<< orphan*/  start_work_mutex; TYPE_1__ p; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 scalar_t__ MAX_NR_NODES ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 
 TYPE_2__* g ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__ p0 ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (long) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(void)
{
	g = (void *)FUNC1(sizeof(*g), MAP_SHARED, 1, 0, 0 /* THP */, 0);

	/* Copy over options: */
	g->p = p0;

	g->p.nr_cpus = FUNC6();

	g->p.nr_nodes = FUNC5() + 1;

	/* char array in count_process_nodes(): */
	FUNC0(g->p.nr_nodes > MAX_NR_NODES || g->p.nr_nodes < 0);

	if (g->p.show_quiet && !g->p.show_details)
		g->p.show_details = -1;

	/* Some memory should be specified: */
	if (!g->p.mb_global_str && !g->p.mb_proc_str && !g->p.mb_thread_str)
		return -1;

	if (g->p.mb_global_str) {
		g->p.mb_global = FUNC2(g->p.mb_global_str);
		FUNC0(g->p.mb_global < 0);
	}

	if (g->p.mb_proc_str) {
		g->p.mb_proc = FUNC2(g->p.mb_proc_str);
		FUNC0(g->p.mb_proc < 0);
	}

	if (g->p.mb_proc_locked_str) {
		g->p.mb_proc_locked = FUNC2(g->p.mb_proc_locked_str);
		FUNC0(g->p.mb_proc_locked < 0);
		FUNC0(g->p.mb_proc_locked > g->p.mb_proc);
	}

	if (g->p.mb_thread_str) {
		g->p.mb_thread = FUNC2(g->p.mb_thread_str);
		FUNC0(g->p.mb_thread < 0);
	}

	FUNC0(g->p.nr_threads <= 0);
	FUNC0(g->p.nr_proc <= 0);

	g->p.nr_tasks = g->p.nr_proc*g->p.nr_threads;

	g->p.bytes_global		= g->p.mb_global	*1024L*1024L;
	g->p.bytes_process		= g->p.mb_proc		*1024L*1024L;
	g->p.bytes_process_locked	= g->p.mb_proc_locked	*1024L*1024L;
	g->p.bytes_thread		= g->p.mb_thread	*1024L*1024L;

	g->data = FUNC10(g->p.bytes_global);

	/* Startup serialization: */
	FUNC3(&g->start_work_mutex);
	FUNC3(&g->startup_mutex);
	FUNC3(&g->startup_done_mutex);
	FUNC3(&g->stop_work_mutex);

	FUNC4();

	FUNC11("#\n");
	if (FUNC7() || FUNC8())
		return -1;
	FUNC11("#\n");

	FUNC9();

	return 0;
}