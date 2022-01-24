#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ protocol; } ;
struct TYPE_7__ {int /*<<< orphan*/  input; } ;
struct rtable {int rt_is_input; TYPE_2__ dst; } ;
struct net_device {int dummy; } ;
struct in_device {int /*<<< orphan*/  dev; } ;
struct fib_result {int /*<<< orphan*/  type; int /*<<< orphan*/  fi; } ;
struct fib_nh_exception {int /*<<< orphan*/  fnhe_rth_input; } ;
struct TYPE_6__ {int /*<<< orphan*/  ipv4; } ;
struct fib_nh_common {scalar_t__ nhc_gw_family; int /*<<< orphan*/  nhc_rth_input; TYPE_1__ nhc_gw; struct net_device* nhc_dev; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 struct fib_nh_common* FUNC0 (struct fib_result const) ; 
 int /*<<< orphan*/  FUNC1 (struct fib_result const) ; 
 int /*<<< orphan*/  FUNC2 (struct in_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct in_device*) ; 
 scalar_t__ FUNC4 (struct in_device*) ; 
 scalar_t__ FUNC5 (struct in_device*) ; 
 TYPE_5__* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPSKB_DOREDIRECT ; 
 int /*<<< orphan*/  NOPOLICY ; 
 int /*<<< orphan*/  NOXFRM ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct in_device* FUNC8 (struct net_device*) ; 
 int FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct in_device*,scalar_t__*) ; 
 struct fib_nh_exception* FUNC10 (struct fib_nh_common*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in_slow_tot ; 
 scalar_t__ FUNC12 (struct in_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_forward ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct in_device*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 struct rtable* FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct rtable*) ; 
 struct rtable* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct rtable*,int /*<<< orphan*/ ,struct fib_result const*,struct fib_nh_exception*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC22(struct sk_buff *skb,
			   const struct fib_result *res,
			   struct in_device *in_dev,
			   __be32 daddr, __be32 saddr, u32 tos)
{
	struct fib_nh_common *nhc = FUNC0(*res);
	struct net_device *dev = nhc->nhc_dev;
	struct fib_nh_exception *fnhe;
	struct rtable *rth;
	int err;
	struct in_device *out_dev;
	bool do_cache;
	u32 itag = 0;

	/* get a working reference to the output device */
	out_dev = FUNC8(dev);
	if (!out_dev) {
		FUNC15("Bug in ip_route_input_slow(). Please report.\n");
		return -EINVAL;
	}

	err = FUNC9(skb, saddr, daddr, tos, FUNC1(*res),
				  in_dev->dev, in_dev, &itag);
	if (err < 0) {
		FUNC13(in_dev->dev, in_dev, skb, daddr,
					 saddr);

		goto cleanup;
	}

	do_cache = res->fi && !itag;
	if (out_dev == in_dev && err && FUNC5(out_dev) &&
	    skb->protocol == FUNC11(ETH_P_IP)) {
		__be32 gw;

		gw = nhc->nhc_gw_family == AF_INET ? nhc->nhc_gw.ipv4 : 0;
		if (FUNC4(out_dev) ||
		    FUNC12(out_dev, saddr, gw))
			FUNC6(skb)->flags |= IPSKB_DOREDIRECT;
	}

	if (skb->protocol != FUNC11(ETH_P_IP)) {
		/* Not IP (i.e. ARP). Do not create route, if it is
		 * invalid for proxy arp. DNAT routes are always valid.
		 *
		 * Proxy arp feature have been extended to allow, ARP
		 * replies back to the same interface, to support
		 * Private VLAN switch technologies. See arp.c.
		 */
		if (out_dev == in_dev &&
		    FUNC3(in_dev) == 0) {
			err = -EINVAL;
			goto cleanup;
		}
	}

	fnhe = FUNC10(nhc, daddr);
	if (do_cache) {
		if (fnhe)
			rth = FUNC16(fnhe->fnhe_rth_input);
		else
			rth = FUNC16(nhc->nhc_rth_input);
		if (FUNC17(rth)) {
			FUNC21(skb, &rth->dst);
			goto out;
		}
	}

	rth = FUNC18(out_dev->dev, 0, res->type,
			   FUNC2(in_dev, NOPOLICY),
			   FUNC2(out_dev, NOXFRM), do_cache);
	if (!rth) {
		err = -ENOBUFS;
		goto cleanup;
	}

	rth->rt_is_input = 1;
	FUNC7(in_slow_tot);

	rth->dst.input = ip_forward;

	FUNC19(rth, daddr, res, fnhe, res->fi, res->type, itag,
		       do_cache);
	FUNC14(&rth->dst);
	FUNC20(skb, &rth->dst);
out:
	err = 0;
 cleanup:
	return err;
}