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
struct netns_ipvs {int sync_state; int ms; int /*<<< orphan*/  sync_lock; TYPE_1__* master_tinfo; } ;
struct ipvs_master_sync_state {scalar_t__ sync_queue_len; scalar_t__ sync_queue_delay; int /*<<< orphan*/  sync_queue; int /*<<< orphan*/  master_wakeup_work; struct ip_vs_sync_buff* sync_buff; } ;
struct ip_vs_sync_buff {int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPVS_SYNC_SEND_DELAY ; 
 scalar_t__ IPVS_SYNC_WAKEUP_RATE ; 
 int IP_VS_STATE_MASTER ; 
 int /*<<< orphan*/  FUNC0 (struct ip_vs_sync_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct netns_ipvs*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC8(struct netns_ipvs *ipvs,
				 struct ipvs_master_sync_state *ms)
{
	struct ip_vs_sync_buff *sb = ms->sync_buff;

	FUNC4(&ipvs->sync_lock);
	if (ipvs->sync_state & IP_VS_STATE_MASTER &&
	    ms->sync_queue_len < FUNC6(ipvs)) {
		if (!ms->sync_queue_len)
			FUNC3(&ms->master_wakeup_work,
					      FUNC2(IPVS_SYNC_SEND_DELAY, 1));
		ms->sync_queue_len++;
		FUNC1(&sb->list, &ms->sync_queue);
		if ((++ms->sync_queue_delay) == IPVS_SYNC_WAKEUP_RATE) {
			int id = (int)(ms - ipvs->ms);

			FUNC7(ipvs->master_tinfo[id].task);
		}
	} else
		FUNC0(sb);
	FUNC5(&ipvs->sync_lock);
}