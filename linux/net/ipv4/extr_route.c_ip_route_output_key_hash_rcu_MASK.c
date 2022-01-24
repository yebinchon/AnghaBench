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
struct sk_buff {int dummy; } ;
struct rtable {int dummy; } ;
struct net_device {int ifindex; int flags; } ;
struct net {struct net_device* loopback_dev; } ;
struct flowi4 {int flowi4_oif; int flowi4_flags; scalar_t__ flowi4_proto; void* daddr; void* saddr; int /*<<< orphan*/  flowi4_scope; } ;
struct fib_result {scalar_t__ type; TYPE_1__* fi; int /*<<< orphan*/ * table; } ;
struct TYPE_2__ {void* fib_prefsrc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENETUNREACH ; 
 int ENODEV ; 
 struct rtable* FUNC0 (int) ; 
 struct net_device* FUNC1 (struct fib_result) ; 
 int FUNC2 (struct fib_result) ; 
 int FLOWI_FLAG_ANYSRC ; 
 int IFF_UP ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 scalar_t__ IPPROTO_IGMP ; 
 int LOOPBACK_IFINDEX ; 
 unsigned int RTCF_LOCAL ; 
 scalar_t__ RTN_LOCAL ; 
 scalar_t__ RTN_UNICAST ; 
 int /*<<< orphan*/  RT_SCOPE_HOST ; 
 int /*<<< orphan*/  RT_SCOPE_LINK ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct net*,void*,int) ; 
 struct rtable* FUNC5 (struct fib_result*,struct flowi4*,int,struct net_device*,unsigned int) ; 
 struct net_device* FUNC6 (struct net*,int) ; 
 int FUNC7 (struct net*,struct flowi4*,struct fib_result*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,struct fib_result*,struct flowi4*,struct sk_buff const*) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (void*) ; 
 scalar_t__ FUNC12 (void*) ; 
 scalar_t__ FUNC13 (void*) ; 
 scalar_t__ FUNC14 (void*) ; 
 scalar_t__ FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net*,int) ; 

struct rtable *FUNC17(struct net *net, struct flowi4 *fl4,
					    struct fib_result *res,
					    const struct sk_buff *skb)
{
	struct net_device *dev_out = NULL;
	int orig_oif = fl4->flowi4_oif;
	unsigned int flags = 0;
	struct rtable *rth;
	int err;

	if (fl4->saddr) {
		if (FUNC13(fl4->saddr) ||
		    FUNC11(fl4->saddr) ||
		    FUNC14(fl4->saddr)) {
			rth = FUNC0(-EINVAL);
			goto out;
		}

		rth = FUNC0(-ENETUNREACH);

		/* I removed check for oif == dev_out->oif here.
		   It was wrong for two reasons:
		   1. ip_dev_find(net, saddr) can return wrong iface, if saddr
		      is assigned to multiple interfaces.
		   2. Moreover, we are allowed to send packets with saddr
		      of another iface. --ANK
		 */

		if (fl4->flowi4_oif == 0 &&
		    (FUNC13(fl4->daddr) ||
		     FUNC11(fl4->daddr))) {
			/* It is equivalent to inet_addr_type(saddr) == RTN_LOCAL */
			dev_out = FUNC4(net, fl4->saddr, false);
			if (!dev_out)
				goto out;

			/* Special hack: user can direct multicasts
			   and limited broadcast via necessary interface
			   without fiddling with IP_MULTICAST_IF or IP_PKTINFO.
			   This hack is not just for fun, it allows
			   vic,vat and friends to work.
			   They bind socket to loopback, set ttl to zero
			   and expect that it will work.
			   From the viewpoint of routing cache they are broken,
			   because we are not allowed to build multicast path
			   with loopback source addr (look, routing cache
			   cannot know, that ttl is zero, so that packet
			   will not leave this host and route is valid).
			   Luckily, this hack is good workaround.
			 */

			fl4->flowi4_oif = dev_out->ifindex;
			goto make_route;
		}

		if (!(fl4->flowi4_flags & FLOWI_FLAG_ANYSRC)) {
			/* It is equivalent to inet_addr_type(saddr) == RTN_LOCAL */
			if (!FUNC4(net, fl4->saddr, false))
				goto out;
		}
	}


	if (fl4->flowi4_oif) {
		dev_out = FUNC6(net, fl4->flowi4_oif);
		rth = FUNC0(-ENODEV);
		if (!dev_out)
			goto out;

		/* RACE: Check return value of inet_select_addr instead. */
		if (!(dev_out->flags & IFF_UP) || !FUNC3(dev_out)) {
			rth = FUNC0(-ENETUNREACH);
			goto out;
		}
		if (FUNC12(fl4->daddr) ||
		    FUNC11(fl4->daddr) ||
		    fl4->flowi4_proto == IPPROTO_IGMP) {
			if (!fl4->saddr)
				fl4->saddr = FUNC10(dev_out, 0,
							      RT_SCOPE_LINK);
			goto make_route;
		}
		if (!fl4->saddr) {
			if (FUNC13(fl4->daddr))
				fl4->saddr = FUNC10(dev_out, 0,
							      fl4->flowi4_scope);
			else if (!fl4->daddr)
				fl4->saddr = FUNC10(dev_out, 0,
							      RT_SCOPE_HOST);
		}
	}

	if (!fl4->daddr) {
		fl4->daddr = fl4->saddr;
		if (!fl4->daddr)
			fl4->daddr = fl4->saddr = FUNC9(INADDR_LOOPBACK);
		dev_out = net->loopback_dev;
		fl4->flowi4_oif = LOOPBACK_IFINDEX;
		res->type = RTN_LOCAL;
		flags |= RTCF_LOCAL;
		goto make_route;
	}

	err = FUNC7(net, fl4, res, 0);
	if (err) {
		res->fi = NULL;
		res->table = NULL;
		if (fl4->flowi4_oif &&
		    (FUNC13(fl4->daddr) ||
		    !FUNC16(net, fl4->flowi4_oif))) {
			/* Apparently, routing tables are wrong. Assume,
			   that the destination is on link.

			   WHY? DW.
			   Because we are allowed to send to iface
			   even if it has NO routes and NO assigned
			   addresses. When oif is specified, routing
			   tables are looked up with only one purpose:
			   to catch if destination is gatewayed, rather than
			   direct. Moreover, if MSG_DONTROUTE is set,
			   we send packet, ignoring both routing tables
			   and ifaddr state. --ANK


			   We could make it even if oif is unknown,
			   likely IPv6, but we do not.
			 */

			if (fl4->saddr == 0)
				fl4->saddr = FUNC10(dev_out, 0,
							      RT_SCOPE_LINK);
			res->type = RTN_UNICAST;
			goto make_route;
		}
		rth = FUNC0(err);
		goto out;
	}

	if (res->type == RTN_LOCAL) {
		if (!fl4->saddr) {
			if (res->fi->fib_prefsrc)
				fl4->saddr = res->fi->fib_prefsrc;
			else
				fl4->saddr = fl4->daddr;
		}

		/* L3 master device is the loopback for that domain */
		dev_out = FUNC15(FUNC1(*res)) ? :
			net->loopback_dev;

		/* make sure orig_oif points to fib result device even
		 * though packet rx/tx happens over loopback or l3mdev
		 */
		orig_oif = FUNC2(*res);

		fl4->flowi4_oif = dev_out->ifindex;
		flags |= RTCF_LOCAL;
		goto make_route;
	}

	FUNC8(net, res, fl4, skb);

	dev_out = FUNC1(*res);
	fl4->flowi4_oif = dev_out->ifindex;


make_route:
	rth = FUNC5(res, fl4, orig_oif, dev_out, flags);

out:
	return rth;
}