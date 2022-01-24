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
struct xfrmu_spdhthresh {int lbits; int rbits; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {int lbits4; int rbits4; int lbits6; int rbits6; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_1__ policy_hthresh; } ;
struct net {TYPE_2__ xfrm; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t XFRMA_SPD_IPV4_HTHRESH ; 
 size_t XFRMA_SPD_IPV6_HTHRESH ; 
 struct xfrmu_spdhthresh* FUNC0 (struct nlattr*) ; 
 int FUNC1 (struct nlattr*) ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct nlmsghdr *nlh,
			    struct nlattr **attrs)
{
	struct net *net = FUNC2(skb->sk);
	struct xfrmu_spdhthresh *thresh4 = NULL;
	struct xfrmu_spdhthresh *thresh6 = NULL;

	/* selector prefixlen thresholds to hash policies */
	if (attrs[XFRMA_SPD_IPV4_HTHRESH]) {
		struct nlattr *rta = attrs[XFRMA_SPD_IPV4_HTHRESH];

		if (FUNC1(rta) < sizeof(*thresh4))
			return -EINVAL;
		thresh4 = FUNC0(rta);
		if (thresh4->lbits > 32 || thresh4->rbits > 32)
			return -EINVAL;
	}
	if (attrs[XFRMA_SPD_IPV6_HTHRESH]) {
		struct nlattr *rta = attrs[XFRMA_SPD_IPV6_HTHRESH];

		if (FUNC1(rta) < sizeof(*thresh6))
			return -EINVAL;
		thresh6 = FUNC0(rta);
		if (thresh6->lbits > 128 || thresh6->rbits > 128)
			return -EINVAL;
	}

	if (thresh4 || thresh6) {
		FUNC3(&net->xfrm.policy_hthresh.lock);
		if (thresh4) {
			net->xfrm.policy_hthresh.lbits4 = thresh4->lbits;
			net->xfrm.policy_hthresh.rbits4 = thresh4->rbits;
		}
		if (thresh6) {
			net->xfrm.policy_hthresh.lbits6 = thresh6->lbits;
			net->xfrm.policy_hthresh.rbits6 = thresh6->rbits;
		}
		FUNC4(&net->xfrm.policy_hthresh.lock);

		FUNC5(net);
	}

	return 0;
}