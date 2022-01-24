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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int dummy; } ;
struct TYPE_7__ {int plen; } ;
struct rt6_info {TYPE_3__ rt6i_dst; } ;
struct TYPE_6__ {int icmpv6_time; } ;
struct TYPE_8__ {int /*<<< orphan*/  peers; TYPE_2__ sysctl; } ;
struct net {TYPE_4__ ipv6; } ;
struct inet_peer {int dummy; } ;
struct flowi6 {int /*<<< orphan*/  daddr; } ;
struct dst_entry {TYPE_1__* dev; scalar_t__ error; } ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTNOROUTES ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 scalar_t__ FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 struct inet_peer* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct inet_peer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inet_peer*) ; 
 int /*<<< orphan*/  FUNC6 (struct dst_entry*) ; 
 struct dst_entry* FUNC7 (struct net*,struct sock*,struct flowi6*) ; 
 struct net* FUNC8 (struct sock*) ; 

__attribute__((used)) static bool FUNC9(struct sock *sk, u8 type,
			       struct flowi6 *fl6)
{
	struct net *net = FUNC8(sk);
	struct dst_entry *dst;
	bool res = false;

	if (FUNC2(net, type))
		return true;

	/*
	 * Look up the output route.
	 * XXX: perhaps the expire for routing entries cloned by
	 * this lookup should be more aggressive (not longer than timeout).
	 */
	dst = FUNC7(net, sk, fl6);
	if (dst->error) {
		FUNC0(net, FUNC6(dst),
			      IPSTATS_MIB_OUTNOROUTES);
	} else if (dst->dev && (dst->dev->flags&IFF_LOOPBACK)) {
		res = true;
	} else {
		struct rt6_info *rt = (struct rt6_info *)dst;
		int tmo = net->ipv6.sysctl.icmpv6_time;
		struct inet_peer *peer;

		/* Give more bandwidth to wider prefixes. */
		if (rt->rt6i_dst.plen < 128)
			tmo >>= ((128 - rt->rt6i_dst.plen)>>5);

		peer = FUNC3(net->ipv6.peers, &fl6->daddr, 1);
		res = FUNC4(peer, tmo);
		if (peer)
			FUNC5(peer);
	}
	FUNC1(dst);
	return res;
}