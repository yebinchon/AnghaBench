#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_v6_daddr; } ;
struct sk_buff {int dummy; } ;
struct ipv6_pinfo {int /*<<< orphan*/  saddr; } ;
struct dccp_hdr {int /*<<< orphan*/  dccph_checksum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct dccp_hdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ipv6_pinfo* FUNC3 (struct sock*) ; 

__attribute__((used)) static inline void FUNC4(struct sock *sk, struct sk_buff *skb)
{
	struct ipv6_pinfo *np = FUNC3(sk);
	struct dccp_hdr *dh = FUNC1(skb);

	FUNC0(skb);
	dh->dccph_checksum = FUNC2(skb, &np->saddr, &sk->sk_v6_daddr);
}