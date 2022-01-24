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
struct TYPE_3__ {int /*<<< orphan*/  es_stats_cache_hits; int /*<<< orphan*/  es_stats_cache_misses; int /*<<< orphan*/  es_stats_all_cnt; int /*<<< orphan*/  es_stats_shk_cnt; scalar_t__ es_stats_max_scan_time; scalar_t__ es_stats_scan_time; scalar_t__ es_stats_shrunk; } ;
struct TYPE_4__ {int /*<<< orphan*/  seeks; int /*<<< orphan*/  count_objects; int /*<<< orphan*/  scan_objects; } ;
struct ext4_sb_info {TYPE_1__ s_es_stats; TYPE_2__ s_es_shrinker; int /*<<< orphan*/  s_es_lock; scalar_t__ s_es_nr_inode; int /*<<< orphan*/  s_es_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEFAULT_SEEKS ; 
 int ES_SHIFT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ext4_es_count ; 
 int /*<<< orphan*/  ext4_es_scan ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct ext4_sb_info *sbi)
{
	int err;

	/* Make sure we have enough bits for physical block number */
	FUNC0(ES_SHIFT < 48);
	FUNC1(&sbi->s_es_list);
	sbi->s_es_nr_inode = 0;
	FUNC5(&sbi->s_es_lock);
	sbi->s_es_stats.es_stats_shrunk = 0;
	err = FUNC3(&sbi->s_es_stats.es_stats_cache_hits, 0,
				  GFP_KERNEL);
	if (err)
		return err;
	err = FUNC3(&sbi->s_es_stats.es_stats_cache_misses, 0,
				  GFP_KERNEL);
	if (err)
		goto err1;
	sbi->s_es_stats.es_stats_scan_time = 0;
	sbi->s_es_stats.es_stats_max_scan_time = 0;
	err = FUNC3(&sbi->s_es_stats.es_stats_all_cnt, 0, GFP_KERNEL);
	if (err)
		goto err2;
	err = FUNC3(&sbi->s_es_stats.es_stats_shk_cnt, 0, GFP_KERNEL);
	if (err)
		goto err3;

	sbi->s_es_shrinker.scan_objects = ext4_es_scan;
	sbi->s_es_shrinker.count_objects = ext4_es_count;
	sbi->s_es_shrinker.seeks = DEFAULT_SEEKS;
	err = FUNC4(&sbi->s_es_shrinker);
	if (err)
		goto err4;

	return 0;
err4:
	FUNC2(&sbi->s_es_stats.es_stats_shk_cnt);
err3:
	FUNC2(&sbi->s_es_stats.es_stats_all_cnt);
err2:
	FUNC2(&sbi->s_es_stats.es_stats_cache_misses);
err1:
	FUNC2(&sbi->s_es_stats.es_stats_cache_hits);
	return err;
}