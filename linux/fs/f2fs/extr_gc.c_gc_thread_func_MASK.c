#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct f2fs_sb_info {scalar_t__ gc_mode; TYPE_2__* sb; int /*<<< orphan*/  gc_mutex; struct f2fs_gc_kthread* gc_thread; } ;
struct f2fs_gc_kthread {unsigned int min_sleep_time; unsigned int urgent_sleep_time; unsigned int no_gc_sleep_time; scalar_t__ gc_wake; int /*<<< orphan*/  gc_wait_queue_head; } ;
struct TYPE_5__ {scalar_t__ frozen; } ;
struct TYPE_6__ {TYPE_1__ s_writers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAULT_CHECKPOINT ; 
 int /*<<< orphan*/  FORCE_FG_GC ; 
 int /*<<< orphan*/  GC_TIME ; 
 scalar_t__ GC_URGENT ; 
 int /*<<< orphan*/  NULL_SEGNO ; 
 scalar_t__ SB_FREEZE_WRITE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct f2fs_gc_kthread*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_gc_kthread*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC20 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC21 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC22 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(void *data)
{
	struct f2fs_sb_info *sbi = data;
	struct f2fs_gc_kthread *gc_th = sbi->gc_thread;
	wait_queue_head_t *wq = &sbi->gc_thread->gc_wait_queue_head;
	unsigned int wait_ms;

	wait_ms = gc_th->min_sleep_time;

	FUNC18();
	do {
		FUNC26(*wq,
				FUNC10() || FUNC6(current) ||
				gc_th->gc_wake,
				FUNC11(wait_ms));

		/* give it a try one time */
		if (gc_th->gc_wake)
			gc_th->gc_wake = 0;

		if (FUNC25()) {
			FUNC21(sbi);
			continue;
		}
		if (FUNC10())
			break;

		if (sbi->sb->s_writers.frozen >= SB_FREEZE_WRITE) {
			FUNC8(gc_th, &wait_ms);
			FUNC21(sbi);
			continue;
		}

		if (FUNC23(sbi, FAULT_CHECKPOINT)) {
			FUNC3(FAULT_CHECKPOINT);
			FUNC4(sbi, false);
		}

		if (!FUNC17(sbi->sb)) {
			FUNC21(sbi);
			continue;
		}

		/*
		 * [GC triggering condition]
		 * 0. GC is not conducted currently.
		 * 1. There are enough dirty segments.
		 * 2. IO subsystem is idle by checking the # of writeback pages.
		 * 3. IO subsystem is idle by checking the # of requests in
		 *    bdev's request list.
		 *
		 * Note) We have to avoid triggering GCs frequently.
		 * Because it is possible that some segments can be
		 * invalidated soon after by user update or deletion.
		 * So, I'd like to wait some time to collect dirty segments.
		 */
		if (sbi->gc_mode == GC_URGENT) {
			wait_ms = gc_th->urgent_sleep_time;
			FUNC12(&sbi->gc_mutex);
			goto do_gc;
		}

		if (!FUNC13(&sbi->gc_mutex)) {
			FUNC21(sbi);
			goto next;
		}

		if (!FUNC9(sbi, GC_TIME)) {
			FUNC8(gc_th, &wait_ms);
			FUNC14(&sbi->gc_mutex);
			FUNC20(sbi);
			goto next;
		}

		if (FUNC7(sbi))
			FUNC0(gc_th, &wait_ms);
		else
			FUNC8(gc_th, &wait_ms);
do_gc:
		FUNC19(sbi);

		/* if return value is not zero, no victim was selected */
		if (FUNC2(sbi, FUNC22(sbi, FORCE_FG_GC), true, NULL_SEGNO))
			wait_ms = gc_th->no_gc_sleep_time;

		FUNC24(sbi->sb, wait_ms,
				FUNC15(sbi), FUNC5(sbi));

		/* balancing f2fs's metadata periodically */
		FUNC1(sbi);
next:
		FUNC16(sbi->sb);

	} while (!FUNC10());
	return 0;
}