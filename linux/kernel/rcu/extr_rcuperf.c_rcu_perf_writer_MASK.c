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
typedef  void* u64 ;
struct sched_param {int sched_priority; } ;
struct rcu_head {int dummy; } ;
struct TYPE_2__ {int (* exp_completed ) () ;int (* get_gp_seq ) () ;int /*<<< orphan*/  (* gp_barrier ) () ;int /*<<< orphan*/  (* sync ) () ;int /*<<< orphan*/  (* exp_sync ) () ;int /*<<< orphan*/  (* async ) (struct rcu_head*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_ALL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int MAX_MEAS ; 
 int MIN_MEAS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PERF_FLAG ; 
 int /*<<< orphan*/  RTWS_ASYNC ; 
 int /*<<< orphan*/  RTWS_BARRIER ; 
 int /*<<< orphan*/  RTWS_EXP_SYNC ; 
 int /*<<< orphan*/  RTWS_IDLE ; 
 int /*<<< orphan*/  RTWS_STOPPING ; 
 int /*<<< orphan*/  RTWS_SYNC ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 int /*<<< orphan*/  SCHED_NORMAL ; 
 scalar_t__ SYSTEM_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int b_rcu_perf_writer_finished ; 
 int b_rcu_perf_writer_started ; 
 int /*<<< orphan*/  FUNC6 (long) ; 
 TYPE_1__* cur_ops ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ gp_async ; 
 scalar_t__ gp_async_max ; 
 scalar_t__ gp_exp ; 
 int holdoff ; 
 int /*<<< orphan*/  FUNC7 (struct rcu_head*) ; 
 struct rcu_head* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* FUNC10 () ; 
 int /*<<< orphan*/  n_async_inflight ; 
 int /*<<< orphan*/  n_rcu_perf_writer_finished ; 
 int /*<<< orphan*/  n_rcu_perf_writer_started ; 
 long nr_cpu_ids ; 
 scalar_t__ nrealwriters ; 
 int /*<<< orphan*/  perf_type ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_perf_async_cb ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  rcu_perf_writer_state ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ shutdown ; 
 int /*<<< orphan*/  shutdown_wq ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int FUNC19 () ; 
 int FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct rcu_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int FUNC25 () ; 
 int FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 scalar_t__ system_state ; 
 void* t_rcu_perf_writer_finished ; 
 void* t_rcu_perf_writer_started ; 
 int /*<<< orphan*/ * FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 void*** writer_durations ; 
 scalar_t__ writer_holdoff ; 
 int* writer_n_durations ; 

__attribute__((used)) static int
FUNC33(void *arg)
{
	int i = 0;
	int i_max;
	long me = (long)arg;
	struct rcu_head *rhp = NULL;
	struct sched_param sp;
	bool started = false, done = false, alldone = false;
	u64 t;
	u64 *wdp;
	u64 *wdpp = writer_durations[me];

	FUNC1("rcu_perf_writer task started");
	FUNC2(!wdpp);
	FUNC17(current, FUNC6(me % nr_cpu_ids));
	sp.sched_priority = 1;
	FUNC14(current, SCHED_FIFO, &sp);

	if (holdoff)
		FUNC16(holdoff * HZ);

	/*
	 * Wait until rcu_end_inkernel_boot() is called for normal GP tests
	 * so that RCU is not always expedited for normal GP tests.
	 * The system_state test is approximate, but works well in practice.
	 */
	while (!gp_exp && system_state != SYSTEM_RUNNING)
		FUNC16(1);

	t = FUNC10();
	if (FUNC4(&n_rcu_perf_writer_started) >= nrealwriters) {
		t_rcu_perf_writer_started = t;
		if (gp_exp) {
			b_rcu_perf_writer_started =
				cur_ops->exp_completed() / 2;
		} else {
			b_rcu_perf_writer_started = cur_ops->get_gp_seq();
		}
	}

	do {
		if (writer_holdoff)
			FUNC31(writer_holdoff);
		wdp = &wdpp[i];
		*wdp = FUNC10();
		if (gp_async) {
retry:
			if (!rhp)
				rhp = FUNC8(sizeof(*rhp), GFP_KERNEL);
			if (rhp && FUNC5(FUNC28(&n_async_inflight)) < gp_async_max) {
				rcu_perf_writer_state = RTWS_ASYNC;
				FUNC3(FUNC28(&n_async_inflight));
				cur_ops->async(rhp, rcu_perf_async_cb);
				rhp = NULL;
			} else if (!FUNC9()) {
				rcu_perf_writer_state = RTWS_BARRIER;
				cur_ops->gp_barrier();
				goto retry;
			} else {
				FUNC7(rhp); /* Because we are stopping. */
			}
		} else if (gp_exp) {
			rcu_perf_writer_state = RTWS_EXP_SYNC;
			cur_ops->exp_sync();
		} else {
			rcu_perf_writer_state = RTWS_SYNC;
			cur_ops->sync();
		}
		rcu_perf_writer_state = RTWS_IDLE;
		t = FUNC10();
		*wdp = t - *wdp;
		i_max = i;
		if (!started &&
		    FUNC5(&n_rcu_perf_writer_started) >= nrealwriters)
			started = true;
		if (!done && i >= MIN_MEAS) {
			done = true;
			sp.sched_priority = 0;
			FUNC14(current,
						   SCHED_NORMAL, &sp);
			FUNC11("%s%s rcu_perf_writer %ld has %d measurements\n",
				 perf_type, PERF_FLAG, me, MIN_MEAS);
			if (FUNC4(&n_rcu_perf_writer_finished) >=
			    nrealwriters) {
				FUNC15(10);
				FUNC12(DUMP_ALL);
				FUNC0("Test complete");
				t_rcu_perf_writer_finished = t;
				if (gp_exp) {
					b_rcu_perf_writer_finished =
						cur_ops->exp_completed() / 2;
				} else {
					b_rcu_perf_writer_finished =
						cur_ops->get_gp_seq();
				}
				if (shutdown) {
					FUNC18(); /* Assign before wake. */
					FUNC32(&shutdown_wq);
				}
			}
		}
		if (done && !alldone &&
		    FUNC5(&n_rcu_perf_writer_finished) >= nrealwriters)
			alldone = true;
		if (started && !alldone && i < MAX_MEAS - 1)
			i++;
		FUNC13();
	} while (!FUNC30());
	if (gp_async) {
		rcu_perf_writer_state = RTWS_BARRIER;
		cur_ops->gp_barrier();
	}
	rcu_perf_writer_state = RTWS_STOPPING;
	writer_n_durations[me] = i_max;
	FUNC29("rcu_perf_writer");
	return 0;
}