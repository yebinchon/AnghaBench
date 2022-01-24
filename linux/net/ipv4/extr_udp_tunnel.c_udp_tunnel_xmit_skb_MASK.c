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
struct udphdr {int /*<<< orphan*/  len; void* source; void* dest; } ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct rtable {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  void* __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  opt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct rtable*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct udphdr* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct rtable *rt, struct sock *sk, struct sk_buff *skb,
			 __be32 src, __be32 dst, __u8 tos, __u8 ttl,
			 __be16 df, __be16 src_port, __be16 dst_port,
			 bool xnet, bool nocheck)
{
	struct udphdr *uh;

	FUNC1(skb, sizeof(*uh));
	FUNC5(skb);
	uh = FUNC6(skb);

	uh->dest = dst_port;
	uh->source = src_port;
	uh->len = FUNC2(skb->len);

	FUNC4(&(FUNC0(skb)->opt), 0, sizeof(FUNC0(skb)->opt));

	FUNC7(nocheck, skb, src, dst, skb->len);

	FUNC3(sk, rt, skb, src, dst, IPPROTO_UDP, tos, ttl, df, xnet);
}