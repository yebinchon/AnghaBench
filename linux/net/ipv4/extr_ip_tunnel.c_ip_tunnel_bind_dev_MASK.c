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
struct net_device {scalar_t__ type; int hard_header_len; int needed_headroom; int /*<<< orphan*/  mtu; int /*<<< orphan*/  flags; } ;
struct iphdr {int /*<<< orphan*/  tos; int /*<<< orphan*/  saddr; scalar_t__ daddr; int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {scalar_t__ link; int /*<<< orphan*/  o_key; struct iphdr iph; } ;
struct ip_tunnel {int hlen; TYPE_2__ parms; int /*<<< orphan*/  net; int /*<<< orphan*/  dst_cache; int /*<<< orphan*/  fwmark; } ;
struct flowi4 {int dummy; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int ETH_DATA_LEN ; 
 int /*<<< orphan*/  IFF_POINTOPOINT ; 
 int IPV4_MIN_MTU ; 
 int /*<<< orphan*/  IP_MAX_MTU ; 
 int /*<<< orphan*/  FUNC0 (struct rtable*) ; 
 int LL_MAX_HEADER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct rtable* FUNC4 (int /*<<< orphan*/ ,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC6 (struct flowi4*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct net_device *tdev = NULL;
	struct ip_tunnel *tunnel = FUNC8(dev);
	const struct iphdr *iph;
	int hlen = LL_MAX_HEADER;
	int mtu = ETH_DATA_LEN;
	int t_hlen = tunnel->hlen + sizeof(struct iphdr);

	iph = &tunnel->parms.iph;

	/* Guess output device to choose reasonable mtu and needed_headroom */
	if (iph->daddr) {
		struct flowi4 fl4;
		struct rtable *rt;

		FUNC6(&fl4, iph->protocol, iph->daddr,
				    iph->saddr, tunnel->parms.o_key,
				    FUNC1(iph->tos), tunnel->parms.link,
				    tunnel->fwmark, 0);
		rt = FUNC4(tunnel->net, &fl4);

		if (!FUNC0(rt)) {
			tdev = rt->dst.dev;
			FUNC5(rt);
		}
		if (dev->type != ARPHRD_ETHER)
			dev->flags |= IFF_POINTOPOINT;

		FUNC3(&tunnel->dst_cache);
	}

	if (!tdev && tunnel->parms.link)
		tdev = FUNC2(tunnel->net, tunnel->parms.link);

	if (tdev) {
		hlen = tdev->hard_header_len + tdev->needed_headroom;
		mtu = FUNC7(tdev->mtu, IP_MAX_MTU);
	}

	dev->needed_headroom = t_hlen + hlen;
	mtu -= (dev->hard_header_len + t_hlen);

	if (mtu < IPV4_MIN_MTU)
		mtu = IPV4_MIN_MTU;

	return mtu;
}