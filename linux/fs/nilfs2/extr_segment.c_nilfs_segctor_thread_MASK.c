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
struct the_nilfs {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  expires; } ;
struct nilfs_sc_info {int sc_interval; int sc_mjcp_freq; int sc_state; scalar_t__ sc_seq_request; scalar_t__ sc_seq_done; int /*<<< orphan*/  sc_wait_task; int /*<<< orphan*/ * sc_task; int /*<<< orphan*/  sc_state_lock; TYPE_1__ sc_timer; int /*<<< orphan*/  sc_wait_daemon; scalar_t__ sc_flush_request; TYPE_2__* sc_super; void* sc_timer_task; } ;
struct TYPE_4__ {struct the_nilfs* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int NILFS_SEGCTOR_COMMIT ; 
 int NILFS_SEGCTOR_QUIT ; 
 int SC_LSEG_SR ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 void* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC4 (struct the_nilfs*) ; 
 scalar_t__ FUNC5 (struct the_nilfs*) ; 
 int FUNC6 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_sc_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(void *arg)
{
	struct nilfs_sc_info *sci = (struct nilfs_sc_info *)arg;
	struct the_nilfs *nilfs = sci->sc_super->s_fs_info;
	int timeout = 0;

	sci->sc_timer_task = current;

	/* start sync. */
	sci->sc_task = current;
	FUNC16(&sci->sc_wait_task); /* for nilfs_segctor_start_thread() */
	FUNC3(sci->sc_super, KERN_INFO,
		  "segctord starting. Construction interval = %lu seconds, CP frequency < %lu seconds",
		  sci->sc_interval / HZ, sci->sc_mjcp_freq / HZ);

	FUNC11(&sci->sc_state_lock);
 loop:
	for (;;) {
		int mode;

		if (sci->sc_state & NILFS_SEGCTOR_QUIT)
			goto end_thread;

		if (timeout || sci->sc_seq_request != sci->sc_seq_done)
			mode = SC_LSEG_SR;
		else if (sci->sc_flush_request)
			mode = FUNC6(sci);
		else
			break;

		FUNC12(&sci->sc_state_lock);
		FUNC7(sci, mode);
		FUNC11(&sci->sc_state_lock);
		timeout = 0;
	}


	if (FUNC2(current)) {
		FUNC12(&sci->sc_state_lock);
		FUNC15();
		FUNC11(&sci->sc_state_lock);
	} else {
		FUNC0(wait);
		int should_sleep = 1;

		FUNC8(&sci->sc_wait_daemon, &wait,
				TASK_INTERRUPTIBLE);

		if (sci->sc_seq_request != sci->sc_seq_done)
			should_sleep = 0;
		else if (sci->sc_flush_request)
			should_sleep = 0;
		else if (sci->sc_state & NILFS_SEGCTOR_COMMIT)
			should_sleep = FUNC14(jiffies,
					sci->sc_timer.expires);

		if (should_sleep) {
			FUNC12(&sci->sc_state_lock);
			FUNC9();
			FUNC11(&sci->sc_state_lock);
		}
		FUNC1(&sci->sc_wait_daemon, &wait);
		timeout = ((sci->sc_state & NILFS_SEGCTOR_COMMIT) &&
			   FUNC13(jiffies, sci->sc_timer.expires));

		if (FUNC4(nilfs) && FUNC5(nilfs))
			FUNC10(nilfs);
	}
	goto loop;

 end_thread:
	FUNC12(&sci->sc_state_lock);

	/* end sync. */
	sci->sc_task = NULL;
	FUNC16(&sci->sc_wait_task); /* for nilfs_segctor_kill_thread() */
	return 0;
}