#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct rtvia {int rtvia_family; int /*<<< orphan*/  rtvia_addr; } ;
struct nlattr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ipv6; int /*<<< orphan*/  ipv4; } ;
struct fib_nh_common {int nhc_flags; int nhc_family; int nhc_gw_family; scalar_t__ nhc_lwtstate; TYPE_2__* nhc_dev; TYPE_1__ nhc_gw; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int EMSGSIZE ; 
 int /*<<< orphan*/  RTA_ENCAP ; 
 int /*<<< orphan*/  RTA_ENCAP_TYPE ; 
 int /*<<< orphan*/  RTA_GATEWAY ; 
 int /*<<< orphan*/  RTA_OIF ; 
 int /*<<< orphan*/  RTA_VIA ; 
 int RTNH_F_DEAD ; 
 int RTNH_F_LINKDOWN ; 
 int RTNH_F_OFFLOAD ; 
 unsigned char RTNH_F_ONLINK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct rtvia* FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlattr* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(struct sk_buff *skb, const struct fib_nh_common *nhc,
		     u8 rt_family, unsigned char *flags, bool skip_oif)
{
	if (nhc->nhc_flags & RTNH_F_DEAD)
		*flags |= RTNH_F_DEAD;

	if (nhc->nhc_flags & RTNH_F_LINKDOWN) {
		*flags |= RTNH_F_LINKDOWN;

		FUNC9();
		switch (nhc->nhc_family) {
		case AF_INET:
			if (FUNC1(nhc->nhc_dev))
				*flags |= RTNH_F_DEAD;
			break;
		case AF_INET6:
			if (FUNC0(nhc->nhc_dev))
				*flags |= RTNH_F_DEAD;
			break;
		}
		FUNC10();
	}

	switch (nhc->nhc_gw_family) {
	case AF_INET:
		if (FUNC6(skb, RTA_GATEWAY, nhc->nhc_gw.ipv4))
			goto nla_put_failure;
		break;
	case AF_INET6:
		/* if gateway family does not match nexthop family
		 * gateway is encoded as RTA_VIA
		 */
		if (rt_family != nhc->nhc_gw_family) {
			int alen = sizeof(struct in6_addr);
			struct nlattr *nla;
			struct rtvia *via;

			nla = FUNC8(skb, RTA_VIA, alen + 2);
			if (!nla)
				goto nla_put_failure;

			via = FUNC4(nla);
			via->rtvia_family = AF_INET6;
			FUNC3(via->rtvia_addr, &nhc->nhc_gw.ipv6, alen);
		} else if (FUNC5(skb, RTA_GATEWAY,
					    &nhc->nhc_gw.ipv6) < 0) {
			goto nla_put_failure;
		}
		break;
	}

	*flags |= (nhc->nhc_flags & RTNH_F_ONLINK);
	if (nhc->nhc_flags & RTNH_F_OFFLOAD)
		*flags |= RTNH_F_OFFLOAD;

	if (!skip_oif && nhc->nhc_dev &&
	    FUNC7(skb, RTA_OIF, nhc->nhc_dev->ifindex))
		goto nla_put_failure;

	if (nhc->nhc_lwtstate &&
	    FUNC2(skb, nhc->nhc_lwtstate,
				RTA_ENCAP, RTA_ENCAP_TYPE) < 0)
		goto nla_put_failure;

	return 0;

nla_put_failure:
	return -EMSGSIZE;
}