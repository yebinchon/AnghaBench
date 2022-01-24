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
struct sk_buff {int dummy; } ;
struct mr_table {int /*<<< orphan*/  mroute_do_wrvifwhole; int /*<<< orphan*/  mroute_do_pim; int /*<<< orphan*/  mroute_do_assert; int /*<<< orphan*/  mroute_reg_vif_num; int /*<<< orphan*/  id; int /*<<< orphan*/  cache_resolve_queue_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPMRA_TABLE_CACHE_RES_QUEUE_LEN ; 
 int /*<<< orphan*/  IPMRA_TABLE_ID ; 
 int /*<<< orphan*/  IPMRA_TABLE_MROUTE_DO_ASSERT ; 
 int /*<<< orphan*/  IPMRA_TABLE_MROUTE_DO_PIM ; 
 int /*<<< orphan*/  IPMRA_TABLE_MROUTE_DO_WRVIFWHOLE ; 
 int /*<<< orphan*/  IPMRA_TABLE_MROUTE_REG_VIF_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct mr_table *mrt, struct sk_buff *skb)
{
	u32 queue_len = FUNC0(&mrt->cache_resolve_queue_len);

	if (FUNC2(skb, IPMRA_TABLE_ID, mrt->id) ||
	    FUNC2(skb, IPMRA_TABLE_CACHE_RES_QUEUE_LEN, queue_len) ||
	    FUNC1(skb, IPMRA_TABLE_MROUTE_REG_VIF_NUM,
			mrt->mroute_reg_vif_num) ||
	    FUNC3(skb, IPMRA_TABLE_MROUTE_DO_ASSERT,
		       mrt->mroute_do_assert) ||
	    FUNC3(skb, IPMRA_TABLE_MROUTE_DO_PIM, mrt->mroute_do_pim) ||
	    FUNC3(skb, IPMRA_TABLE_MROUTE_DO_WRVIFWHOLE,
		       mrt->mroute_do_wrvifwhole))
		return false;

	return true;
}