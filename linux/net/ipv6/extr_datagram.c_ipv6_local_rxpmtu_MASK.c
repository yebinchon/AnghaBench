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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  rxpmtu; } ;
struct TYPE_5__ {TYPE_1__ bits; } ;
struct ipv6_pinfo {int /*<<< orphan*/  rxpmtu; TYPE_2__ rxopt; } ;
struct TYPE_6__ {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_scope_id; scalar_t__ sin6_flowinfo; scalar_t__ sin6_port; int /*<<< orphan*/  sin6_family; } ;
struct ip6_mtuinfo {TYPE_3__ ip6m_addr; int /*<<< orphan*/  ip6m_mtu; } ;
struct flowi6 {int /*<<< orphan*/  flowi6_oif; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct ip6_mtuinfo* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ipv6_pinfo* FUNC3 (struct sock*) ; 
 struct ipv6hdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ *,struct sk_buff*) ; 

void FUNC11(struct sock *sk, struct flowi6 *fl6, u32 mtu)
{
	struct ipv6_pinfo *np = FUNC3(sk);
	struct ipv6hdr *iph;
	struct sk_buff *skb;
	struct ip6_mtuinfo *mtu_info;

	if (!np->rxopt.bits.rxpmtu)
		return;

	skb = FUNC2(sizeof(struct ipv6hdr), GFP_ATOMIC);
	if (!skb)
		return;

	FUNC6(skb, sizeof(struct ipv6hdr));
	FUNC7(skb);
	iph = FUNC4(skb);
	iph->daddr = fl6->daddr;

	mtu_info = FUNC0(skb);

	mtu_info->ip6m_mtu = mtu;
	mtu_info->ip6m_addr.sin6_family = AF_INET6;
	mtu_info->ip6m_addr.sin6_port = 0;
	mtu_info->ip6m_addr.sin6_flowinfo = 0;
	mtu_info->ip6m_addr.sin6_scope_id = fl6->flowi6_oif;
	mtu_info->ip6m_addr.sin6_addr = FUNC4(skb)->daddr;

	FUNC1(skb, FUNC9(skb) - skb->data);
	FUNC8(skb);

	skb = FUNC10(&np->rxpmtu, skb);
	FUNC5(skb);
}