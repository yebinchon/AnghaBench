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
struct nf_bridge_frag_data {int /*<<< orphan*/  mac; int /*<<< orphan*/  vlan_tci; int /*<<< orphan*/  vlan_proto; scalar_t__ vlan_present; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb,
				     const struct nf_bridge_frag_data *data)
{
	int err;

	err = FUNC4(skb, ETH_HLEN);
	if (err) {
		FUNC2(skb);
		return -ENOMEM;
	}
	if (data->vlan_present)
		FUNC1(skb, data->vlan_proto, data->vlan_tci);
	else if (FUNC6(skb))
		FUNC0(skb);

	FUNC3(skb, -ETH_HLEN, data->mac, ETH_HLEN);
	FUNC5(skb);

	return 0;
}