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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int l3num; } ;
struct nf_conntrack_tuple {TYPE_1__ src; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_TUPLE_IP ; 
#define  NFPROTO_IPV4 129 
#define  NFPROTO_IPV6 128 
 int FUNC0 (struct sk_buff*,struct nf_conntrack_tuple const*) ; 
 int FUNC1 (struct sk_buff*,struct nf_conntrack_tuple const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb,
				    const struct nf_conntrack_tuple *tuple)
{
	int ret = 0;
	struct nlattr *nest_parms;

	nest_parms = FUNC3(skb, CTA_TUPLE_IP);
	if (!nest_parms)
		goto nla_put_failure;

	switch (tuple->src.l3num) {
	case NFPROTO_IPV4:
		ret = FUNC0(skb, tuple);
		break;
	case NFPROTO_IPV6:
		ret = FUNC1(skb, tuple);
		break;
	}

	FUNC2(skb, nest_parms);

	return ret;

nla_put_failure:
	return -1;
}