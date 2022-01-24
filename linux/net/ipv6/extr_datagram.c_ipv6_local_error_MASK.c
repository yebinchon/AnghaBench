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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int ee_errno; scalar_t__ ee_data; int /*<<< orphan*/  ee_info; scalar_t__ ee_pad; scalar_t__ ee_code; scalar_t__ ee_type; int /*<<< orphan*/  ee_origin; } ;
struct sock_exterr_skb {int /*<<< orphan*/  port; int /*<<< orphan*/ * addr_offset; TYPE_1__ ee; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  protocol; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; } ;
struct ipv6_pinfo {int /*<<< orphan*/  recverr; } ;
struct flowi6 {int /*<<< orphan*/  fl6_dport; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sock_exterr_skb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  SO_EE_ORIGIN_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ipv6_pinfo* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipv6hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipv6hdr* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (struct sock*,struct sk_buff*) ; 

void FUNC14(struct sock *sk, int err, struct flowi6 *fl6, u32 info)
{
	const struct ipv6_pinfo *np = FUNC4(sk);
	struct sock_exterr_skb *serr;
	struct ipv6hdr *iph;
	struct sk_buff *skb;

	if (!np->recverr)
		return;

	skb = FUNC2(sizeof(struct ipv6hdr), GFP_ATOMIC);
	if (!skb)
		return;

	skb->protocol = FUNC3(ETH_P_IPV6);

	FUNC9(skb, sizeof(struct ipv6hdr));
	FUNC10(skb);
	iph = FUNC6(skb);
	iph->daddr = fl6->daddr;
	FUNC5(iph, 0, 0);

	serr = FUNC0(skb);
	serr->ee.ee_errno = err;
	serr->ee.ee_origin = SO_EE_ORIGIN_LOCAL;
	serr->ee.ee_type = 0;
	serr->ee.ee_code = 0;
	serr->ee.ee_pad = 0;
	serr->ee.ee_info = info;
	serr->ee.ee_data = 0;
	serr->addr_offset = (u8 *)&iph->daddr - FUNC8(skb);
	serr->port = fl6->fl6_dport;

	FUNC1(skb, FUNC12(skb) - skb->data);
	FUNC11(skb);

	if (FUNC13(sk, skb))
		FUNC7(skb);
}