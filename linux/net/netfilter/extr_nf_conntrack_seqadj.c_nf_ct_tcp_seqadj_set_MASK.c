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
struct tcphdr {int /*<<< orphan*/  seq; } ;
struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 

void FUNC4(struct sk_buff *skb,
			  struct nf_conn *ct, enum ip_conntrack_info ctinfo,
			  s32 off)
{
	const struct tcphdr *th;

	if (FUNC1(ct) != IPPROTO_TCP)
		return;

	th = (struct tcphdr *)(FUNC3(skb) + FUNC0(skb));
	FUNC2(ct, ctinfo, th->seq, off);
}