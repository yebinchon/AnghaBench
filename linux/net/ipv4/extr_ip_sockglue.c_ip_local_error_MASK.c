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
struct sk_buff {scalar_t__ data; } ;
struct iphdr {int /*<<< orphan*/  daddr; } ;
struct inet_sock {int /*<<< orphan*/  recverr; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sock_exterr_skb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  SO_EE_ORIGIN_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC3 (struct sock*) ; 
 struct iphdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sock*,struct sk_buff*) ; 

void FUNC12(struct sock *sk, int err, __be32 daddr, __be16 port, u32 info)
{
	struct inet_sock *inet = FUNC3(sk);
	struct sock_exterr_skb *serr;
	struct iphdr *iph;
	struct sk_buff *skb;

	if (!inet->recverr)
		return;

	skb = FUNC2(sizeof(struct iphdr), GFP_ATOMIC);
	if (!skb)
		return;

	FUNC7(skb, sizeof(struct iphdr));
	FUNC8(skb);
	iph = FUNC4(skb);
	iph->daddr = daddr;

	serr = FUNC0(skb);
	serr->ee.ee_errno = err;
	serr->ee.ee_origin = SO_EE_ORIGIN_LOCAL;
	serr->ee.ee_type = 0;
	serr->ee.ee_code = 0;
	serr->ee.ee_pad = 0;
	serr->ee.ee_info = info;
	serr->ee.ee_data = 0;
	serr->addr_offset = (u8 *)&iph->daddr - FUNC6(skb);
	serr->port = port;

	FUNC1(skb, FUNC10(skb) - skb->data);
	FUNC9(skb);

	if (FUNC11(sk, skb))
		FUNC5(skb);
}