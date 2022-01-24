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
struct TYPE_3__ {scalar_t__ use_time; int /*<<< orphan*/  add_time; } ;
struct xfrm_policy {int /*<<< orphan*/  timer; TYPE_1__ curlft; int /*<<< orphan*/  index; int /*<<< orphan*/  byidx; int /*<<< orphan*/  family; int /*<<< orphan*/  selector; } ;
struct TYPE_4__ {int /*<<< orphan*/  policy_hash_work; int /*<<< orphan*/  xfrm_policy_lock; scalar_t__ policy_byidx; } ;
struct net {TYPE_2__ xfrm; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ HZ ; 
 scalar_t__ FUNC0 (struct xfrm_policy*) ; 
 int FUNC1 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_policy*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_policy*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct hlist_head* FUNC8 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net*) ; 
 int /*<<< orphan*/  FUNC10 (struct net*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct net*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct net*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct xfrm_policy*) ; 
 struct xfrm_policy* FUNC17 (struct xfrm_policy*,int,int) ; 
 struct xfrm_policy* FUNC18 (struct hlist_head*,struct xfrm_policy*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC20 (struct xfrm_policy*,struct xfrm_policy*) ; 
 struct net* FUNC21 (struct xfrm_policy*) ; 

int FUNC22(int dir, struct xfrm_policy *policy, int excl)
{
	struct net *net = FUNC21(policy);
	struct xfrm_policy *delpol;
	struct hlist_head *chain;

	FUNC12(&net->xfrm.xfrm_policy_lock);
	chain = FUNC8(net, &policy->selector, policy->family, dir);
	if (chain)
		delpol = FUNC18(chain, policy, excl);
	else
		delpol = FUNC17(policy, dir, excl);

	if (FUNC0(delpol)) {
		FUNC13(&net->xfrm.xfrm_policy_lock);
		return FUNC1(delpol);
	}

	FUNC2(policy, dir);

	/* After previous checking, family can either be AF_INET or AF_INET6 */
	if (policy->family == AF_INET)
		FUNC9(net);
	else
		FUNC10(net);

	if (delpol) {
		FUNC20(delpol, policy);
		FUNC3(delpol, dir);
	}
	policy->index = delpol ? delpol->index : FUNC15(net, dir, policy->index);
	FUNC4(&policy->byidx, net->xfrm.policy_byidx+FUNC5(net, policy->index));
	policy->curlft.add_time = FUNC6();
	policy->curlft.use_time = 0;
	if (!FUNC7(&policy->timer, jiffies + HZ))
		FUNC16(policy);
	FUNC13(&net->xfrm.xfrm_policy_lock);

	if (delpol)
		FUNC19(delpol);
	else if (FUNC14(net, dir, NULL))
		FUNC11(&net->xfrm.policy_hash_work);

	return 0;
}