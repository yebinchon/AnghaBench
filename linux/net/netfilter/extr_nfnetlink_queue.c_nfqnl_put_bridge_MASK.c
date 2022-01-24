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
struct sk_buff {scalar_t__ mac_header; scalar_t__ network_header; int /*<<< orphan*/  vlan_proto; int /*<<< orphan*/  vlan_tci; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {scalar_t__ pf; } ;
struct nf_queue_entry {TYPE_1__ state; struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFQA_L2HDR ; 
 int /*<<< orphan*/  NFQA_VLAN ; 
 int /*<<< orphan*/  NFQA_VLAN_PROTO ; 
 int /*<<< orphan*/  NFQA_VLAN_TCI ; 
 scalar_t__ PF_BRIDGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct nf_queue_entry *entry, struct sk_buff *skb)
{
	struct sk_buff *entskb = entry->skb;

	if (entry->state.pf != PF_BRIDGE || !FUNC6(entskb))
		return 0;

	if (FUNC7(entskb)) {
		struct nlattr *nest;

		nest = FUNC2(skb, NFQA_VLAN);
		if (!nest)
			goto nla_put_failure;

		if (FUNC4(skb, NFQA_VLAN_TCI, FUNC0(entskb->vlan_tci)) ||
		    FUNC4(skb, NFQA_VLAN_PROTO, entskb->vlan_proto))
			goto nla_put_failure;

		FUNC1(skb, nest);
	}

	if (entskb->mac_header < entskb->network_header) {
		int len = (int)(entskb->network_header - entskb->mac_header);

		if (FUNC3(skb, NFQA_L2HDR, len, FUNC5(entskb)))
			goto nla_put_failure;
	}

	return 0;

nla_put_failure:
	return -1;
}