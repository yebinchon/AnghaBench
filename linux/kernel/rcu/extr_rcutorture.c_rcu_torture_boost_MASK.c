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
struct sched_param {int sched_priority; } ;
struct rcu_boost_inflight {int /*<<< orphan*/  rcu; int /*<<< orphan*/  inflight; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  boost_mutex ; 
 unsigned long boost_starttime ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_rcu_torture_boost_rterror ; 
 int /*<<< orphan*/  n_rcu_torture_boosts ; 
 int /*<<< orphan*/  rcu_torture_boost_cb ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 unsigned long test_boost_duration ; 
 unsigned long test_boost_interval ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static int FUNC18(void *arg)
{
	unsigned long call_rcu_time;
	unsigned long endtime;
	unsigned long oldstarttime;
	struct rcu_boost_inflight rbi = { .inflight = 0 };
	struct sched_param sp;

	FUNC1("rcu_torture_boost started");

	/* Set real-time priority. */
	sp.sched_priority = 1;
	if (FUNC9(current, SCHED_FIFO, &sp) < 0) {
		FUNC1("rcu_torture_boost RT prio failed!");
		n_rcu_torture_boost_rterror++;
	}

	FUNC4(&rbi.rcu);
	/* Each pass through the following loop does one boost-test cycle. */
	do {
		/* Track if the test failed already in this test interval? */
		bool failed = false;

		/* Increment n_rcu_torture_boosts once per boost-test */
		while (!FUNC5()) {
			if (FUNC6(&boost_mutex)) {
				n_rcu_torture_boosts++;
				FUNC7(&boost_mutex);
				break;
			}
			FUNC11(1);
		}
		if (FUNC5())
			goto checkwait;

		/* Wait for the next test interval. */
		oldstarttime = boost_starttime;
		while (FUNC0(jiffies, oldstarttime)) {
			FUNC10(oldstarttime - jiffies);
			FUNC14("rcu_torture_boost");
			if (FUNC16())
				goto checkwait;
		}

		/* Do one boost-test interval. */
		endtime = oldstarttime + test_boost_duration * HZ;
		call_rcu_time = jiffies;
		while (FUNC0(jiffies, endtime)) {
			/* If we don't have a callback in flight, post one. */
			if (!FUNC12(&rbi.inflight)) {
				/* RCU core before ->inflight = 1. */
				FUNC13(&rbi.inflight, 1);
				FUNC2(&rbi.rcu, rcu_torture_boost_cb);
				/* Check if the boost test failed */
				failed = failed ||
					 FUNC8(call_rcu_time,
								 jiffies);
				call_rcu_time = jiffies;
			}
			FUNC14("rcu_torture_boost");
			if (FUNC16())
				goto checkwait;
		}

		/*
		 * If boost never happened, then inflight will always be 1, in
		 * this case the boost check would never happen in the above
		 * loop so do another one here.
		 */
		if (!failed && FUNC12(&rbi.inflight))
			FUNC8(call_rcu_time, jiffies);

		/*
		 * Set the start time of the next test interval.
		 * Yes, this is vulnerable to long delays, but such
		 * delays simply cause a false negative for the next
		 * interval.  Besides, we are running at RT priority,
		 * so delays should be relatively rare.
		 */
		while (oldstarttime == boost_starttime &&
		       !FUNC5()) {
			if (FUNC6(&boost_mutex)) {
				boost_starttime = jiffies +
						  test_boost_interval * HZ;
				FUNC7(&boost_mutex);
				break;
			}
			FUNC11(1);
		}

		/* Go do the stutter. */
checkwait:	FUNC14("rcu_torture_boost");
	} while (!FUNC16());

	/* Clean up and exit. */
	while (!FUNC5() || FUNC12(&rbi.inflight)) {
		FUNC17("rcu_torture_boost");
		FUNC11(1);
	}
	FUNC3(&rbi.rcu);
	FUNC15("rcu_torture_boost");
	return 0;
}