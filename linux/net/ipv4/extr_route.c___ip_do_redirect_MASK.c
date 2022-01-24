#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; struct net_device* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  obsolete; int /*<<< orphan*/  dev; } ;
struct rtable {scalar_t__ rt_gw_family; scalar_t__ rt_gw4; TYPE_2__ dst; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct net {int dummy; } ;
struct neighbour {int nud_state; } ;
struct iphdr {scalar_t__ daddr; scalar_t__ saddr; } ;
struct in_device {int dummy; } ;
struct flowi4 {int /*<<< orphan*/  daddr; } ;
struct fib_result {int dummy; } ;
struct fib_nh_common {int dummy; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_5__ {scalar_t__ gateway; } ;
struct TYPE_8__ {int code; TYPE_1__ un; } ;
struct TYPE_7__ {scalar_t__ saddr; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  DST_OBSOLETE_KILL ; 
 struct fib_nh_common* FUNC0 (struct fib_result) ; 
#define  ICMP_REDIR_HOST 131 
#define  ICMP_REDIR_HOSTTOS 130 
#define  ICMP_REDIR_NET 129 
#define  ICMP_REDIR_NETTOS 128 
 scalar_t__ FUNC1 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_device*) ; 
 scalar_t__ FUNC3 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct neighbour*) ; 
 int /*<<< orphan*/  NETEVENT_NEIGH_UPDATE ; 
 int NUD_VALID ; 
 scalar_t__ RTN_UNICAST ; 
 struct in_device* FUNC6 (struct net_device*) ; 
 struct neighbour* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  arp_tbl ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct neighbour*) ; 
 struct net* FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct net*,struct flowi4*,struct fib_result*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct in_device*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (struct net*,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,struct net_device*) ; 
 TYPE_3__* FUNC15 (struct sk_buff*) ; 
 scalar_t__ ip_rt_gc_timeout ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 scalar_t__ jiffies ; 
 struct neighbour* FUNC19 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct neighbour*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC22 (char*,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC23 (struct fib_nh_common*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,scalar_t__) ; 

__attribute__((used)) static void FUNC24(struct rtable *rt, struct sk_buff *skb, struct flowi4 *fl4,
			     bool kill_route)
{
	__be32 new_gw = FUNC11(skb)->un.gateway;
	__be32 old_gw = FUNC15(skb)->saddr;
	struct net_device *dev = skb->dev;
	struct in_device *in_dev;
	struct fib_result res;
	struct neighbour *n;
	struct net *net;

	switch (FUNC11(skb)->code & 7) {
	case ICMP_REDIR_NET:
	case ICMP_REDIR_NETTOS:
	case ICMP_REDIR_HOST:
	case ICMP_REDIR_HOSTTOS:
		break;

	default:
		return;
	}

	if (rt->rt_gw_family != AF_INET || rt->rt_gw4 != old_gw)
		return;

	in_dev = FUNC6(dev);
	if (!in_dev)
		return;

	net = FUNC9(dev);
	if (new_gw == old_gw || !FUNC2(in_dev) ||
	    FUNC17(new_gw) || FUNC16(new_gw) ||
	    FUNC18(new_gw))
		goto reject_redirect;

	if (!FUNC4(in_dev)) {
		if (!FUNC12(in_dev, new_gw, old_gw))
			goto reject_redirect;
		if (FUNC3(in_dev) && FUNC14(new_gw, dev))
			goto reject_redirect;
	} else {
		if (FUNC13(net, new_gw) != RTN_UNICAST)
			goto reject_redirect;
	}

	n = FUNC7(rt->dst.dev, new_gw);
	if (!n)
		n = FUNC19(&arp_tbl, &new_gw, rt->dst.dev);
	if (!FUNC5(n)) {
		if (!(n->nud_state & NUD_VALID)) {
			FUNC20(n, NULL);
		} else {
			if (FUNC10(net, fl4, &res, 0) == 0) {
				struct fib_nh_common *nhc = FUNC0(res);

				FUNC23(nhc, fl4->daddr, new_gw,
						0, false,
						jiffies + ip_rt_gc_timeout);
			}
			if (kill_route)
				rt->dst.obsolete = DST_OBSOLETE_KILL;
			FUNC8(NETEVENT_NEIGH_UPDATE, n);
		}
		FUNC21(n);
	}
	return;

reject_redirect:
#ifdef CONFIG_IP_ROUTE_VERBOSE
	if (IN_DEV_LOG_MARTIANS(in_dev)) {
		const struct iphdr *iph = (const struct iphdr *) skb->data;
		__be32 daddr = iph->daddr;
		__be32 saddr = iph->saddr;

		net_info_ratelimited("Redirect from %pI4 on %s about %pI4 ignored\n"
				     "  Advised path = %pI4 -> %pI4\n",
				     &old_gw, dev->name, &new_gw,
				     &saddr, &daddr);
	}
#endif
	;
}