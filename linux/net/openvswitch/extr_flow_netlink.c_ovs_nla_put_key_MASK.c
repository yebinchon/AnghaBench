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
struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int FUNC0 (struct sw_flow_key const*,struct sw_flow_key const*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int) ; 

int FUNC3(const struct sw_flow_key *swkey,
		    const struct sw_flow_key *output, int attr, bool is_mask,
		    struct sk_buff *skb)
{
	int err;
	struct nlattr *nla;

	nla = FUNC2(skb, attr);
	if (!nla)
		return -EMSGSIZE;
	err = FUNC0(swkey, output, is_mask, skb);
	if (err)
		return err;
	FUNC1(skb, nla);

	return 0;
}