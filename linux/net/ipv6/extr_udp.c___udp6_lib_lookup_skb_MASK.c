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
struct udp_table {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 struct sock* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct udp_table*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct ipv6hdr* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static struct sock *FUNC5(struct sk_buff *skb,
					  __be16 sport, __be16 dport,
					  struct udp_table *udptable)
{
	const struct ipv6hdr *iph = FUNC4(skb);

	return FUNC0(FUNC1(skb->dev), &iph->saddr, sport,
				 &iph->daddr, dport, FUNC2(skb),
				 FUNC3(skb), udptable, skb);
}