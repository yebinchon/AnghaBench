#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {struct sock* v6_ctl_sk; } ;
struct net {TYPE_1__ dccp; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct flowi6 {int /*<<< orphan*/  fl6_sport; int /*<<< orphan*/  fl6_dport; int /*<<< orphan*/  flowi6_oif; int /*<<< orphan*/  flowi6_proto; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  fl6 ;
struct TYPE_6__ {scalar_t__ dccph_type; int /*<<< orphan*/  dccph_sport; int /*<<< orphan*/  dccph_dport; int /*<<< orphan*/  dccph_checksum; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCCP_MIB_OUTRSTS ; 
 int /*<<< orphan*/  DCCP_MIB_OUTSEGS ; 
 scalar_t__ DCCP_PKT_RESET ; 
 int /*<<< orphan*/  IPPROTO_DCCP ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 struct sk_buff* FUNC2 (struct sock*,struct sk_buff*) ; 
 TYPE_3__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct net* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct flowi6*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct dst_entry* FUNC8 (struct sock*,struct flowi6*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct sk_buff*,struct flowi6*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipv6hdr* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct flowi6*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,struct dst_entry*) ; 

__attribute__((used)) static void FUNC17(const struct sock *sk, struct sk_buff *rxskb)
{
	const struct ipv6hdr *rxip6h;
	struct sk_buff *skb;
	struct flowi6 fl6;
	struct net *net = FUNC5(FUNC15(rxskb)->dev);
	struct sock *ctl_sk = net->dccp.v6_ctl_sk;
	struct dst_entry *dst;

	if (FUNC3(rxskb)->dccph_type == DCCP_PKT_RESET)
		return;

	if (!FUNC11(rxskb))
		return;

	skb = FUNC2(ctl_sk, rxskb);
	if (skb == NULL)
		return;

	rxip6h = FUNC10(rxskb);
	FUNC3(skb)->dccph_checksum = FUNC4(skb, &rxip6h->saddr,
							    &rxip6h->daddr);

	FUNC13(&fl6, 0, sizeof(fl6));
	fl6.daddr = rxip6h->saddr;
	fl6.saddr = rxip6h->daddr;

	fl6.flowi6_proto = IPPROTO_DCCP;
	fl6.flowi6_oif = FUNC7(rxskb);
	fl6.fl6_dport = FUNC3(skb)->dccph_dport;
	fl6.fl6_sport = FUNC3(skb)->dccph_sport;
	FUNC14(rxskb, FUNC6(&fl6));

	/* sk = NULL, but it is safe for now. RST socket required. */
	dst = FUNC8(ctl_sk, &fl6, NULL);
	if (!FUNC1(dst)) {
		FUNC16(skb, dst);
		FUNC9(ctl_sk, skb, &fl6, 0, NULL, 0, 0);
		FUNC0(DCCP_MIB_OUTSEGS);
		FUNC0(DCCP_MIB_OUTRSTS);
		return;
	}

	FUNC12(skb);
}