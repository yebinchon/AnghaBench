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
typedef  size_t u8 ;
struct xfrm_policy {int dummy; } ;
struct xfrm_pol_inexact_bin {int dummy; } ;
struct TYPE_2__ {struct hlist_head* policy_inexact; int /*<<< orphan*/  xfrm_policy_lock; } ;
struct net {TYPE_1__ xfrm; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct xfrm_policy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_pol_inexact_bin*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct xfrm_pol_inexact_bin* FUNC3 (struct xfrm_policy*,size_t) ; 
 struct hlist_head* FUNC4 (struct xfrm_pol_inexact_bin*,struct xfrm_policy*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct hlist_head*,struct xfrm_policy*) ; 
 struct xfrm_policy* FUNC6 (struct hlist_head*,struct xfrm_policy*,int) ; 
 struct net* FUNC7 (struct xfrm_policy*) ; 

__attribute__((used)) static struct xfrm_policy *
FUNC8(struct xfrm_policy *policy, u8 dir, int excl)
{
	struct xfrm_pol_inexact_bin *bin;
	struct xfrm_policy *delpol;
	struct hlist_head *chain;
	struct net *net;

	bin = FUNC3(policy, dir);
	if (!bin)
		return FUNC0(-ENOMEM);

	net = FUNC7(policy);
	FUNC2(&net->xfrm.xfrm_policy_lock);

	chain = FUNC4(bin, policy, dir);
	if (!chain) {
		FUNC1(bin, false);
		return FUNC0(-ENOMEM);
	}

	delpol = FUNC6(chain, policy, excl);
	if (delpol && excl) {
		FUNC1(bin, false);
		return FUNC0(-EEXIST);
	}

	chain = &net->xfrm.policy_inexact[dir];
	FUNC5(chain, policy);

	if (delpol)
		FUNC1(bin, false);

	return delpol;
}