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
struct xt_rateest_net {int /*<<< orphan*/  hash_lock; } ;
struct xt_rateest {scalar_t__ refcnt; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  list; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xt_rateest*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct xt_rateest_net* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  xt_rateest_id ; 

void FUNC6(struct net *net, struct xt_rateest *est)
{
	struct xt_rateest_net *xn = FUNC5(net, xt_rateest_id);

	FUNC3(&xn->hash_lock);
	if (--est->refcnt == 0) {
		FUNC1(&est->list);
		FUNC0(&est->rate_est);
		/*
		 * gen_estimator est_timer() might access est->lock or bstats,
		 * wait a RCU grace period before freeing 'est'
		 */
		FUNC2(est, rcu);
	}
	FUNC4(&xn->hash_lock);
}