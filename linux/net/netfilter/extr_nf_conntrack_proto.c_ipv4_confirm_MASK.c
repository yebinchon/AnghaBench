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
struct nf_hook_state {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int IP_CT_RELATED_REPLY ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 unsigned int FUNC1 (struct sk_buff*,scalar_t__,struct nf_conn*,int) ; 
 unsigned int FUNC2 (struct sk_buff*) ; 
 struct nf_conn* FUNC3 (struct sk_buff*,int*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static unsigned int FUNC5(void *priv,
				 struct sk_buff *skb,
				 const struct nf_hook_state *state)
{
	enum ip_conntrack_info ctinfo;
	struct nf_conn *ct;

	ct = FUNC3(skb, &ctinfo);
	if (!ct || ctinfo == IP_CT_RELATED_REPLY)
		return FUNC2(skb);

	return FUNC1(skb,
			  FUNC4(skb) + FUNC0(skb),
			  ct, ctinfo);
}