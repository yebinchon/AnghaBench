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
struct sk_buff {scalar_t__ mac_header; scalar_t__ network_header; int /*<<< orphan*/  vlan_proto; int /*<<< orphan*/  vlan_tci; } ;
struct nlattr {int dummy; } ;
struct nfulnl_instance {int /*<<< orphan*/  skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFULA_L2HDR ; 
 int /*<<< orphan*/  NFULA_VLAN ; 
 int /*<<< orphan*/  NFULA_VLAN_PROTO ; 
 int /*<<< orphan*/  NFULA_VLAN_TCI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nlattr*) ; 
 struct nlattr* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff const*) ; 
 scalar_t__ FUNC7 (struct sk_buff const*) ; 

__attribute__((used)) static int FUNC8(struct nfulnl_instance *inst, const struct sk_buff *skb)
{
	if (!FUNC6(skb))
		return 0;

	if (FUNC7(skb)) {
		struct nlattr *nest;

		nest = FUNC2(inst->skb, NFULA_VLAN);
		if (!nest)
			goto nla_put_failure;

		if (FUNC4(inst->skb, NFULA_VLAN_TCI, FUNC0(skb->vlan_tci)) ||
		    FUNC4(inst->skb, NFULA_VLAN_PROTO, skb->vlan_proto))
			goto nla_put_failure;

		FUNC1(inst->skb, nest);
	}

	if (skb->mac_header < skb->network_header) {
		int len = (int)(skb->network_header - skb->mac_header);

		if (FUNC3(inst->skb, NFULA_L2HDR, len, FUNC5(skb)))
			goto nla_put_failure;
	}

	return 0;

nla_put_failure:
	return -1;
}