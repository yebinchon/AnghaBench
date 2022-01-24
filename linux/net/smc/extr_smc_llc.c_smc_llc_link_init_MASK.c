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
typedef  int /*<<< orphan*/  u32 ;
struct smc_link_group {scalar_t__ id; } ;
struct smc_link {int /*<<< orphan*/  llc_testlink_wrk; int /*<<< orphan*/  llc_testlink_resp; int /*<<< orphan*/  llc_delete_rkey_mutex; int /*<<< orphan*/  llc_delete_rkey; int /*<<< orphan*/  llc_confirm_rkey; int /*<<< orphan*/  llc_add_resp; int /*<<< orphan*/  llc_add; int /*<<< orphan*/  llc_confirm_resp; int /*<<< orphan*/  llc_confirm; int /*<<< orphan*/  llc_wq; int /*<<< orphan*/  link_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct smc_link_group* FUNC4 (struct smc_link*) ; 
 int /*<<< orphan*/  smc_llc_testlink_work ; 

int FUNC5(struct smc_link *link)
{
	struct smc_link_group *lgr = FUNC4(link);
	link->llc_wq = FUNC1("llc_wq-%x:%x)", WQ_MEM_RECLAIM,
					       *((u32 *)lgr->id),
					       link->link_id);
	if (!link->llc_wq)
		return -ENOMEM;
	FUNC2(&link->llc_confirm);
	FUNC2(&link->llc_confirm_resp);
	FUNC2(&link->llc_add);
	FUNC2(&link->llc_add_resp);
	FUNC2(&link->llc_confirm_rkey);
	FUNC2(&link->llc_delete_rkey);
	FUNC3(&link->llc_delete_rkey_mutex);
	FUNC2(&link->llc_testlink_resp);
	FUNC0(&link->llc_testlink_wrk, smc_llc_testlink_work);
	return 0;
}