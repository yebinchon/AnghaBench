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
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct rt6_info {int rt6i_flags; } ;
struct net {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; } ;
struct ila_lwt {int /*<<< orphan*/  dst_cache; scalar_t__ connected; scalar_t__ lwt_output; } ;
struct flowi6 {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi6_iif; int /*<<< orphan*/  flowi6_oif; } ;
struct dst_entry {scalar_t__ error; TYPE_1__* dev; TYPE_2__* lwtstate; } ;
typedef  int /*<<< orphan*/  fl6 ;
struct TYPE_5__ {int (* orig_output ) (struct net*,struct sock*,struct sk_buff*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  LOOPBACK_IFINDEX ; 
 int FUNC1 (struct dst_entry*) ; 
 int RTF_CACHE ; 
 int RTF_GATEWAY ; 
 struct dst_entry* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct dst_entry*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct net*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct flowi6*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct ila_lwt* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 struct dst_entry* FUNC11 (struct net*,int /*<<< orphan*/ *,struct flowi6*) ; 
 struct ipv6hdr* FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct flowi6*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC15 (struct rt6_info*,int /*<<< orphan*/ *) ; 
 struct dst_entry* FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,struct dst_entry*) ; 
 int FUNC18 (struct net*,struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC19 (int) ; 
 struct dst_entry* FUNC20 (struct net*,struct dst_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct dst_entry *orig_dst = FUNC16(skb);
	struct rt6_info *rt = (struct rt6_info *)orig_dst;
	struct ila_lwt *ilwt = FUNC8(orig_dst->lwtstate);
	struct dst_entry *dst;
	int err = -EINVAL;

	if (skb->protocol != FUNC7(ETH_P_IPV6))
		goto drop;

	if (ilwt->lwt_output)
		FUNC10(skb,
					FUNC9(orig_dst->lwtstate),
					true);

	if (rt->rt6i_flags & (RTF_GATEWAY | RTF_CACHE)) {
		/* Already have a next hop address in route, no need for
		 * dest cache route.
		 */
		return orig_dst->lwtstate->orig_output(net, sk, skb);
	}

	dst = FUNC2(&ilwt->dst_cache);
	if (FUNC19(!dst)) {
		struct ipv6hdr *ip6h = FUNC12(skb);
		struct flowi6 fl6;

		/* Lookup a route for the new destination. Take into
		 * account that the base route may already have a gateway.
		 */

		FUNC14(&fl6, 0, sizeof(fl6));
		fl6.flowi6_oif = orig_dst->dev->ifindex;
		fl6.flowi6_iif = LOOPBACK_IFINDEX;
		fl6.daddr = *FUNC15((struct rt6_info *)orig_dst,
					 &ip6h->daddr);

		dst = FUNC11(net, NULL, &fl6);
		if (dst->error) {
			err = -EHOSTUNREACH;
			FUNC5(dst);
			goto drop;
		}

		dst = FUNC20(net, dst, FUNC6(&fl6), NULL, 0);
		if (FUNC0(dst)) {
			err = FUNC1(dst);
			goto drop;
		}

		if (ilwt->connected)
			FUNC3(&ilwt->dst_cache, dst, &fl6.saddr);
	}

	FUNC17(skb, dst);
	return FUNC4(net, sk, skb);

drop:
	FUNC13(skb);
	return err;
}