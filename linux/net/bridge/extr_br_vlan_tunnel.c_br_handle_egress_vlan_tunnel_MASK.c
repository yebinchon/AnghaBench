#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_4__ {TYPE_1__* tunnel_dst; int /*<<< orphan*/  tunnel_id; } ;
struct net_bridge_vlan {TYPE_2__ tinfo; } ;
struct TYPE_3__ {int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct sk_buff *skb,
				 struct net_bridge_vlan *vlan)
{
	int err;

	if (!vlan || !vlan->tinfo.tunnel_id)
		return 0;

	if (FUNC5(!FUNC4(skb)))
		return 0;

	FUNC1(skb);
	err = FUNC3(skb);
	if (err)
		return err;

	FUNC2(skb, FUNC0(&vlan->tinfo.tunnel_dst->dst));

	return 0;
}