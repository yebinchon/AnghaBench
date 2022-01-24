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
struct dst_entry {TYPE_2__* dev; } ;
struct rtable {struct dst_entry dst; } ;
struct TYPE_3__ {int /*<<< orphan*/  sysctl_icmp_ratelimit; int /*<<< orphan*/  peers; } ;
struct net {TYPE_1__ ipv4; } ;
struct inet_peer {int dummy; } ;
struct flowi4 {int /*<<< orphan*/  daddr; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int IFF_LOOPBACK ; 
 scalar_t__ FUNC0 (struct net*,int,int) ; 
 struct inet_peer* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct inet_peer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inet_peer*) ; 
 int FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static bool FUNC5(struct net *net, struct rtable *rt,
			       struct flowi4 *fl4, int type, int code)
{
	struct dst_entry *dst = &rt->dst;
	struct inet_peer *peer;
	bool rc = true;
	int vif;

	if (FUNC0(net, type, code))
		goto out;

	/* No rate limit on loopback */
	if (dst->dev && (dst->dev->flags&IFF_LOOPBACK))
		goto out;

	vif = FUNC4(dst->dev);
	peer = FUNC1(net->ipv4.peers, fl4->daddr, vif, 1);
	rc = FUNC2(peer, net->ipv4.sysctl_icmp_ratelimit);
	if (peer)
		FUNC3(peer);
out:
	return rc;
}