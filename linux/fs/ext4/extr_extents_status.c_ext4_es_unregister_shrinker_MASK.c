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
struct TYPE_2__ {int /*<<< orphan*/  es_stats_shk_cnt; int /*<<< orphan*/  es_stats_all_cnt; int /*<<< orphan*/  es_stats_cache_misses; int /*<<< orphan*/  es_stats_cache_hits; } ;
struct ext4_sb_info {int /*<<< orphan*/  s_es_shrinker; TYPE_1__ s_es_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ext4_sb_info *sbi)
{
	FUNC0(&sbi->s_es_stats.es_stats_cache_hits);
	FUNC0(&sbi->s_es_stats.es_stats_cache_misses);
	FUNC0(&sbi->s_es_stats.es_stats_all_cnt);
	FUNC0(&sbi->s_es_stats.es_stats_shk_cnt);
	FUNC1(&sbi->s_es_shrinker);
}