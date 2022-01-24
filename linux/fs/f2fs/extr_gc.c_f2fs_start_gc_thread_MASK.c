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
struct f2fs_sb_info {struct f2fs_gc_kthread* gc_thread; TYPE_2__* sb; } ;
struct f2fs_gc_kthread {int /*<<< orphan*/  f2fs_gc_task; int /*<<< orphan*/  gc_wait_queue_head; scalar_t__ gc_wake; int /*<<< orphan*/  no_gc_sleep_time; int /*<<< orphan*/  max_sleep_time; int /*<<< orphan*/  min_sleep_time; int /*<<< orphan*/  urgent_sleep_time; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_4__ {TYPE_1__* s_bdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEF_GC_THREAD_MAX_SLEEP_TIME ; 
 int /*<<< orphan*/  DEF_GC_THREAD_MIN_SLEEP_TIME ; 
 int /*<<< orphan*/  DEF_GC_THREAD_NOGC_SLEEP_TIME ; 
 int /*<<< orphan*/  DEF_GC_THREAD_URGENT_SLEEP_TIME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct f2fs_gc_kthread* FUNC4 (struct f2fs_sb_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gc_thread_func ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct f2fs_sb_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_gc_kthread*) ; 

int FUNC8(struct f2fs_sb_info *sbi)
{
	struct f2fs_gc_kthread *gc_th;
	dev_t dev = sbi->sb->s_bdev->bd_dev;
	int err = 0;

	gc_th = FUNC4(sbi, sizeof(struct f2fs_gc_kthread), GFP_KERNEL);
	if (!gc_th) {
		err = -ENOMEM;
		goto out;
	}

	gc_th->urgent_sleep_time = DEF_GC_THREAD_URGENT_SLEEP_TIME;
	gc_th->min_sleep_time = DEF_GC_THREAD_MIN_SLEEP_TIME;
	gc_th->max_sleep_time = DEF_GC_THREAD_MAX_SLEEP_TIME;
	gc_th->no_gc_sleep_time = DEF_GC_THREAD_NOGC_SLEEP_TIME;

	gc_th->gc_wake= 0;

	sbi->gc_thread = gc_th;
	FUNC5(&sbi->gc_thread->gc_wait_queue_head);
	sbi->gc_thread->f2fs_gc_task = FUNC6(gc_thread_func, sbi,
			"f2fs_gc-%u:%u", FUNC1(dev), FUNC2(dev));
	if (FUNC0(gc_th->f2fs_gc_task)) {
		err = FUNC3(gc_th->f2fs_gc_task);
		FUNC7(gc_th);
		sbi->gc_thread = NULL;
	}
out:
	return err;
}