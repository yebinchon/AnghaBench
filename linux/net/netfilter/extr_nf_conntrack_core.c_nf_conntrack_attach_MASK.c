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
struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ IP_CT_DIR_ORIGINAL ; 
 int IP_CT_RELATED ; 
 int IP_CT_RELATED_REPLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nf_conn* FUNC2 (struct sk_buff const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nf_conn*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct sk_buff *nskb, const struct sk_buff *skb)
{
	struct nf_conn *ct;
	enum ip_conntrack_info ctinfo;

	/* This ICMP is in reverse direction to the packet which caused it */
	ct = FUNC2(skb, &ctinfo);
	if (FUNC0(ctinfo) == IP_CT_DIR_ORIGINAL)
		ctinfo = IP_CT_RELATED_REPLY;
	else
		ctinfo = IP_CT_RELATED;

	/* Attach to new skbuff, and increment count */
	FUNC3(nskb, ct, ctinfo);
	FUNC1(FUNC4(nskb));
}