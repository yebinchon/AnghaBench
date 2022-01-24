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
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sk_buff const*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sk_buff const*,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,struct nf_conntrack_tuple*) ; 

bool FUNC2(const struct sk_buff *skb, unsigned int nhoff,
		       u_int16_t l3num,
		       struct net *net, struct nf_conntrack_tuple *tuple)
{
	u8 protonum;
	int protoff;

	protoff = FUNC0(skb, nhoff, l3num, &protonum);
	if (protoff <= 0)
		return false;

	return FUNC1(skb, nhoff, protoff, l3num, protonum, net, tuple);
}