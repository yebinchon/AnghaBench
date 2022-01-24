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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct sk_buff *skb)
{
	u16 vlan_tci;
	__be16 vlan_proto;
	int err;

	if (FUNC4(FUNC5(skb))) {
		FUNC1(skb);
	} else {
		if (FUNC6(!FUNC3(skb->protocol)))
			return 0;

		err = FUNC0(skb, &vlan_tci);
		if (err)
			return err;
	}
	/* move next vlan tag to hw accel tag */
	if (FUNC4(!FUNC3(skb->protocol)))
		return 0;

	vlan_proto = skb->protocol;
	err = FUNC0(skb, &vlan_tci);
	if (FUNC6(err))
		return err;

	FUNC2(skb, vlan_proto, vlan_tci);
	return 0;
}