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
struct bdi_writeback {int /*<<< orphan*/  congested; int /*<<< orphan*/  completions; int /*<<< orphan*/ * stat; void* dirty_sleep; int /*<<< orphan*/  dwork; int /*<<< orphan*/  work_list; int /*<<< orphan*/  work_lock; void* avg_write_bandwidth; void* write_bandwidth; void* dirty_ratelimit; void* balanced_dirty_ratelimit; void* bw_time_stamp; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  b_dirty_time; int /*<<< orphan*/  b_more_io; int /*<<< orphan*/  b_io; int /*<<< orphan*/  b_dirty; void* last_old_flush; struct backing_dev_info* bdi; } ;
struct backing_dev_info {struct bdi_writeback wb; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 void* INIT_BW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int NR_WB_STAT_ITEMS ; 
 int /*<<< orphan*/  FUNC2 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC6 (struct bdi_writeback*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct backing_dev_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wb_workfn ; 

__attribute__((used)) static int FUNC12(struct bdi_writeback *wb, struct backing_dev_info *bdi,
		   int blkcg_id, gfp_t gfp)
{
	int i, err;

	FUNC6(wb, 0, sizeof(*wb));

	if (wb != &bdi->wb)
		FUNC2(bdi);
	wb->bdi = bdi;
	wb->last_old_flush = jiffies;
	FUNC1(&wb->b_dirty);
	FUNC1(&wb->b_io);
	FUNC1(&wb->b_more_io);
	FUNC1(&wb->b_dirty_time);
	FUNC9(&wb->list_lock);

	wb->bw_time_stamp = jiffies;
	wb->balanced_dirty_ratelimit = INIT_BW;
	wb->dirty_ratelimit = INIT_BW;
	wb->write_bandwidth = INIT_BW;
	wb->avg_write_bandwidth = INIT_BW;

	FUNC9(&wb->work_lock);
	FUNC1(&wb->work_list);
	FUNC0(&wb->dwork, wb_workfn);
	wb->dirty_sleep = jiffies;

	wb->congested = FUNC10(bdi, blkcg_id, gfp);
	if (!wb->congested) {
		err = -ENOMEM;
		goto out_put_bdi;
	}

	err = FUNC5(&wb->completions, gfp);
	if (err)
		goto out_put_cong;

	for (i = 0; i < NR_WB_STAT_ITEMS; i++) {
		err = FUNC8(&wb->stat[i], 0, gfp);
		if (err)
			goto out_destroy_stat;
	}

	return 0;

out_destroy_stat:
	while (i--)
		FUNC7(&wb->stat[i]);
	FUNC4(&wb->completions);
out_put_cong:
	FUNC11(wb->congested);
out_put_bdi:
	if (wb != &bdi->wb)
		FUNC3(bdi);
	return err;
}