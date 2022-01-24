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
struct TYPE_3__ {struct net_device* dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct net_device {scalar_t__ mtu; scalar_t__ hard_header_len; int /*<<< orphan*/  flags; } ;
struct iphdr {int /*<<< orphan*/  tos; int /*<<< orphan*/  saddr; scalar_t__ daddr; } ;
struct TYPE_4__ {scalar_t__ link; struct iphdr iph; } ;
struct ip_tunnel {int hlen; TYPE_2__ parms; int /*<<< orphan*/  net; } ;
struct flowi4 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_POINTOPOINT ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 scalar_t__ IPV6_MIN_MTU ; 
 int /*<<< orphan*/  FUNC0 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct rtable* FUNC3 (int /*<<< orphan*/ ,struct flowi4*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rtable*) ; 
 struct ip_tunnel* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct net_device *tdev = NULL;
	struct ip_tunnel *tunnel;
	const struct iphdr *iph;
	struct flowi4 fl4;

	tunnel = FUNC5(dev);
	iph = &tunnel->parms.iph;

	if (iph->daddr) {
		struct rtable *rt = FUNC3(tunnel->net, &fl4,
							  NULL,
							  iph->daddr, iph->saddr,
							  0, 0,
							  IPPROTO_IPV6,
							  FUNC1(iph->tos),
							  tunnel->parms.link);

		if (!FUNC0(rt)) {
			tdev = rt->dst.dev;
			FUNC4(rt);
		}
		dev->flags |= IFF_POINTOPOINT;
	}

	if (!tdev && tunnel->parms.link)
		tdev = FUNC2(tunnel->net, tunnel->parms.link);

	if (tdev && !FUNC6(tdev)) {
		int t_hlen = tunnel->hlen + sizeof(struct iphdr);

		dev->hard_header_len = tdev->hard_header_len + sizeof(struct iphdr);
		dev->mtu = tdev->mtu - t_hlen;
		if (dev->mtu < IPV6_MIN_MTU)
			dev->mtu = IPV6_MIN_MTU;
	}
}