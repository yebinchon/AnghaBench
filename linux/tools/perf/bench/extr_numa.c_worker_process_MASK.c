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
typedef  int /*<<< orphan*/  u8 ;
struct thread_data {int process_nr; int thread_nr; int task_nr; int curr_cpu; int /*<<< orphan*/ * process_lock; int /*<<< orphan*/  val; int /*<<< orphan*/ * process_data; int /*<<< orphan*/  bind_cpumask; int /*<<< orphan*/  bind_node; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_mutex_t ;
struct TYPE_3__ {int nr_threads; int show_details; int /*<<< orphan*/  bytes_process; } ;
struct TYPE_4__ {TYPE_1__ p; struct thread_data* threads; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* g ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct thread_data*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  worker_thread ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(int process_nr)
{
	pthread_mutex_t process_lock;
	struct thread_data *td;
	pthread_t *pthreads;
	u8 *process_data;
	int task_nr;
	int ret;
	int t;

	FUNC8(&process_lock, NULL);
	FUNC10("process %d", process_nr);

	/*
	 * Pick up the memory policy and the CPU binding of our first thread,
	 * so that we initialize memory accordingly:
	 */
	task_nr = process_nr*g->p.nr_threads;
	td = g->threads + task_nr;

	FUNC2(td->bind_node);
	FUNC1(td->bind_cpumask);

	pthreads = FUNC12(g->p.nr_threads * sizeof(pthread_t));
	process_data = FUNC11(g->p.bytes_process);

	if (g->p.show_details >= 3) {
		FUNC5(" # process %2d global mem: %p, process mem: %p\n",
			process_nr, g->data, process_data);
	}

	for (t = 0; t < g->p.nr_threads; t++) {
		task_nr = process_nr*g->p.nr_threads + t;
		td = g->threads + task_nr;

		td->process_data = process_data;
		td->process_nr   = process_nr;
		td->thread_nr    = t;
		td->task_nr	 = task_nr;
		td->val          = FUNC9();
		td->curr_cpu	 = -1;
		td->process_lock = &process_lock;

		ret = FUNC6(pthreads + t, NULL, worker_thread, td);
		FUNC0(ret);
	}

	for (t = 0; t < g->p.nr_threads; t++) {
                ret = FUNC7(pthreads[t], NULL);
		FUNC0(ret);
	}

	FUNC4(process_data, g->p.bytes_process);
	FUNC3(pthreads);
}