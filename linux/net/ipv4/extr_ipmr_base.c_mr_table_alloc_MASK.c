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
struct net {int dummy; } ;
struct mr_table_ops {int /*<<< orphan*/  rht_params; } ;
struct mr_table {int mroute_reg_vif_num; int /*<<< orphan*/  ipmr_expire_timer; int /*<<< orphan*/  mfc_unres_queue; int /*<<< orphan*/  mfc_cache_list; struct mr_table_ops ops; int /*<<< orphan*/  mfc_hash; int /*<<< orphan*/  net; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mr_table* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mr_table*) ; 
 struct mr_table* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void (*) (struct timer_list*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct net*) ; 

struct mr_table *
FUNC7(struct net *net, u32 id,
	       struct mr_table_ops *ops,
	       void (*expire_func)(struct timer_list *t),
	       void (*table_set)(struct mr_table *mrt,
				 struct net *net))
{
	struct mr_table *mrt;
	int err;

	mrt = FUNC3(sizeof(*mrt), GFP_KERNEL);
	if (!mrt)
		return FUNC0(-ENOMEM);
	mrt->id = id;
	FUNC6(&mrt->net, net);

	mrt->ops = *ops;
	err = FUNC4(&mrt->mfc_hash, mrt->ops.rht_params);
	if (err) {
		FUNC2(mrt);
		return FUNC0(err);
	}
	FUNC1(&mrt->mfc_cache_list);
	FUNC1(&mrt->mfc_unres_queue);

	FUNC5(&mrt->ipmr_expire_timer, expire_func, 0);

	mrt->mroute_reg_vif_num = -1;
	table_set(mrt, net);
	return mrt;
}