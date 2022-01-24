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
struct netns_ipvs {int /*<<< orphan*/  sync_buff_lock; } ;
struct ipvs_master_sync_state {struct ip_vs_sync_buff* sync_buff; } ;
struct ip_vs_sync_buff {scalar_t__ firstuse; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,unsigned long) ; 

__attribute__((used)) static inline struct ip_vs_sync_buff *
FUNC4(struct netns_ipvs *ipvs, struct ipvs_master_sync_state *ms,
		   unsigned long time)
{
	struct ip_vs_sync_buff *sb;

	FUNC1(&ipvs->sync_buff_lock);
	sb = ms->sync_buff;
	if (sb && FUNC3(jiffies - sb->firstuse, time)) {
		ms->sync_buff = NULL;
		FUNC0(TASK_RUNNING);
	} else
		sb = NULL;
	FUNC2(&ipvs->sync_buff_lock);
	return sb;
}