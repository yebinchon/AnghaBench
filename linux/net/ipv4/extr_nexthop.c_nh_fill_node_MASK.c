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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nhmsg {int nh_family; scalar_t__ nh_scope; scalar_t__ resvd; int /*<<< orphan*/  nh_protocol; int /*<<< orphan*/  nh_flags; } ;
struct TYPE_2__ {scalar_t__ nhc_lwtstate; scalar_t__ nhc_scope; struct net_device* nhc_dev; } ;
struct fib6_nh {int /*<<< orphan*/  fib_nh_gw6; int /*<<< orphan*/  fib_nh_gw_family; } ;
struct fib_nh {int /*<<< orphan*/  fib_nh_gw4; int /*<<< orphan*/  fib_nh_gw_family; } ;
struct nh_info {int family; TYPE_1__ fib_nhc; struct fib6_nh fib6_nh; struct fib_nh fib_nh; scalar_t__ reject_nh; } ;
struct nh_group {int dummy; } ;
struct nexthop {int /*<<< orphan*/  nh_info; int /*<<< orphan*/  nh_grp; scalar_t__ is_group; int /*<<< orphan*/  id; int /*<<< orphan*/  protocol; int /*<<< orphan*/  nh_flags; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int AF_UNSPEC ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  NHA_BLACKHOLE ; 
 int /*<<< orphan*/  NHA_ENCAP ; 
 int /*<<< orphan*/  NHA_ENCAP_TYPE ; 
 int /*<<< orphan*/  NHA_GATEWAY ; 
 int /*<<< orphan*/  NHA_ID ; 
 int /*<<< orphan*/  NHA_OIF ; 
 scalar_t__ FUNC0 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct nh_group*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nhmsg* FUNC5 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct nexthop *nh,
			int event, u32 portid, u32 seq, unsigned int nlflags)
{
	struct fib6_nh *fib6_nh;
	struct fib_nh *fib_nh;
	struct nlmsghdr *nlh;
	struct nh_info *nhi;
	struct nhmsg *nhm;

	nlh = FUNC7(skb, portid, seq, event, sizeof(*nhm), nlflags);
	if (!nlh)
		return -EMSGSIZE;

	nhm = FUNC5(nlh);
	nhm->nh_family = AF_UNSPEC;
	nhm->nh_flags = nh->nh_flags;
	nhm->nh_protocol = nh->protocol;
	nhm->nh_scope = 0;
	nhm->resvd = 0;

	if (FUNC4(skb, NHA_ID, nh->id))
		goto nla_put_failure;

	if (nh->is_group) {
		struct nh_group *nhg = FUNC8(nh->nh_grp);

		if (FUNC3(skb, nhg))
			goto nla_put_failure;
		goto out;
	}

	nhi = FUNC8(nh->nh_info);
	nhm->nh_family = nhi->family;
	if (nhi->reject_nh) {
		if (FUNC1(skb, NHA_BLACKHOLE))
			goto nla_put_failure;
		goto out;
	} else {
		const struct net_device *dev;

		dev = nhi->fib_nhc.nhc_dev;
		if (dev && FUNC4(skb, NHA_OIF, dev->ifindex))
			goto nla_put_failure;
	}

	nhm->nh_scope = nhi->fib_nhc.nhc_scope;
	switch (nhi->family) {
	case AF_INET:
		fib_nh = &nhi->fib_nh;
		if (fib_nh->fib_nh_gw_family &&
		    FUNC4(skb, NHA_GATEWAY, fib_nh->fib_nh_gw4))
			goto nla_put_failure;
		break;

	case AF_INET6:
		fib6_nh = &nhi->fib6_nh;
		if (fib6_nh->fib_nh_gw_family &&
		    FUNC2(skb, NHA_GATEWAY, &fib6_nh->fib_nh_gw6))
			goto nla_put_failure;
		break;
	}

	if (nhi->fib_nhc.nhc_lwtstate &&
	    FUNC0(skb, nhi->fib_nhc.nhc_lwtstate,
				NHA_ENCAP, NHA_ENCAP_TYPE) < 0)
		goto nla_put_failure;

out:
	FUNC6(skb, nlh);
	return 0;

nla_put_failure:
	return -EMSGSIZE;
}