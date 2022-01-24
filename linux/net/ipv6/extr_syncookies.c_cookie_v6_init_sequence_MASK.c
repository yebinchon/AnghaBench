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
struct tcphdr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipv6hdr const*,struct tcphdr const*,int /*<<< orphan*/ *) ; 
 struct ipv6hdr* FUNC1 (struct sk_buff const*) ; 
 struct tcphdr* FUNC2 (struct sk_buff const*) ; 

__u32 FUNC3(const struct sk_buff *skb, __u16 *mssp)
{
	const struct ipv6hdr *iph = FUNC1(skb);
	const struct tcphdr *th = FUNC2(skb);

	return FUNC0(iph, th, mssp);
}