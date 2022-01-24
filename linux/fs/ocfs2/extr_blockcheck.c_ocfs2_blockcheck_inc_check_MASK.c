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
typedef  scalar_t__ u64 ;
struct ocfs2_blockcheck_stats {int /*<<< orphan*/  b_lock; scalar_t__ b_check_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ocfs2_blockcheck_stats *stats)
{
	u64 new_count;

	if (!stats)
		return;

	FUNC1(&stats->b_lock);
	stats->b_check_count++;
	new_count = stats->b_check_count;
	FUNC2(&stats->b_lock);

	if (!new_count)
		FUNC0(ML_NOTICE, "Block check count has wrapped\n");
}