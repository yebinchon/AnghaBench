#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ rt_delay_jiffies; scalar_t__ rt_delay_ms; scalar_t__ rt_delay_us; scalar_t__ rt_preempted; int /*<<< orphan*/  rt_readstate; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* cleanup ) () ;int /*<<< orphan*/  (* cb_barrier ) () ;int /*<<< orphan*/  name; int /*<<< orphan*/  ttype; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* cur_ops ; 
 TYPE_2__* err_segs ; 
 scalar_t__ err_segs_recorded ; 
 int /*<<< orphan*/ * fakewriter_tasks ; 
 int /*<<< orphan*/  fqs_task ; 
 int /*<<< orphan*/  fwd_prog_task ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ n_rcu_torture_barrier_error ; 
 int /*<<< orphan*/  n_rcu_torture_error ; 
 int nfakewriters ; 
 int nrealreaders ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/ * rcu_torture_current ; 
 int /*<<< orphan*/  rcu_torture_fakewriter ; 
 int /*<<< orphan*/  rcu_torture_fqs ; 
 int /*<<< orphan*/  rcu_torture_fwd_prog ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  rcu_torture_reader ; 
 int /*<<< orphan*/  rcu_torture_stall ; 
 int /*<<< orphan*/  rcu_torture_stats ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  rcu_torture_writer ; 
 int /*<<< orphan*/  rcutor_hp ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,unsigned long*) ; 
 int /*<<< orphan*/ * reader_tasks ; 
 int rt_read_nsegs ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  srcu_ctlp ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,unsigned long*) ; 
 int /*<<< orphan*/  stall_task ; 
 int /*<<< orphan*/  stats_task ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  writer_task ; 

__attribute__((used)) static void
FUNC19(void)
{
	int firsttime;
	int flags = 0;
	unsigned long gp_seq = 0;
	int i;

	if (FUNC15()) {
		if (cur_ops->cb_barrier != NULL)
			cur_ops->cb_barrier();
		return;
	}
	if (!cur_ops) {
		FUNC16();
		return;
	}

	FUNC10();
	FUNC5();
	FUNC18(rcu_torture_fwd_prog, fwd_prog_task);
	FUNC18(rcu_torture_stall, stall_task);
	FUNC18(rcu_torture_writer, writer_task);

	if (reader_tasks) {
		for (i = 0; i < nrealreaders; i++)
			FUNC18(rcu_torture_reader,
					     reader_tasks[i]);
		FUNC2(reader_tasks);
	}
	rcu_torture_current = NULL;

	if (fakewriter_tasks) {
		for (i = 0; i < nfakewriters; i++) {
			FUNC18(rcu_torture_fakewriter,
					     fakewriter_tasks[i]);
		}
		FUNC2(fakewriter_tasks);
		fakewriter_tasks = NULL;
	}

	FUNC9(cur_ops->ttype, &flags, &gp_seq);
	FUNC11(cur_ops->ttype, srcu_ctlp, &flags, &gp_seq);
	FUNC3("%s:  End-test grace-period state: g%lu f%#x\n",
		 cur_ops->name, gp_seq, flags);
	FUNC18(rcu_torture_stats, stats_task);
	FUNC18(rcu_torture_fqs, fqs_task);
	if (FUNC6())
		FUNC1(rcutor_hp);

	/*
	 * Wait for all RCU callbacks to fire, then do torture-type-specific
	 * cleanup operations.
	 */
	if (cur_ops->cb_barrier != NULL)
		cur_ops->cb_barrier();
	if (cur_ops->cleanup != NULL)
		cur_ops->cleanup();

	FUNC8();  /* -After- the stats thread is stopped! */

	if (err_segs_recorded) {
		FUNC3("Failure/close-call rcutorture reader segments:\n");
		if (rt_read_nsegs == 0)
			FUNC3("\t: No segments recorded!!!\n");
		firsttime = 1;
		for (i = 0; i < rt_read_nsegs; i++) {
			FUNC3("\t%d: %#x ", i, err_segs[i].rt_readstate);
			if (err_segs[i].rt_delay_jiffies != 0) {
				FUNC4("%s%ldjiffies", firsttime ? "" : "+",
					err_segs[i].rt_delay_jiffies);
				firsttime = 0;
			}
			if (err_segs[i].rt_delay_ms != 0) {
				FUNC4("%s%ldms", firsttime ? "" : "+",
					err_segs[i].rt_delay_ms);
				firsttime = 0;
			}
			if (err_segs[i].rt_delay_us != 0) {
				FUNC4("%s%ldus", firsttime ? "" : "+",
					err_segs[i].rt_delay_us);
				firsttime = 0;
			}
			FUNC4("%s\n",
				err_segs[i].rt_preempted ? "preempted" : "");

		}
	}
	if (FUNC0(&n_rcu_torture_error) || n_rcu_torture_barrier_error)
		FUNC7(cur_ops, "End of test: FAILURE");
	else if (FUNC17())
		FUNC7(cur_ops,
					       "End of test: RCU_HOTPLUG");
	else
		FUNC7(cur_ops, "End of test: SUCCESS");
	FUNC16();
}