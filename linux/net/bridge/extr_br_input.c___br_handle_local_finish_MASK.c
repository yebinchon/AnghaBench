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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net_bridge_port {int flags; int /*<<< orphan*/  br; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROPT_NO_LL_LEARN ; 
 int BR_LEARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_bridge_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_bridge_port* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct net_bridge_port*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct sk_buff *skb)
{
	struct net_bridge_port *p = FUNC2(skb->dev);
	u16 vid = 0;

	/* check if vlan is allowed, to avoid spoofing */
	if ((p->flags & BR_LEARNING) &&
	    !FUNC1(p->br, BROPT_NO_LL_LEARN) &&
	    FUNC3(p, skb, &vid))
		FUNC0(p->br, p, FUNC4(skb)->h_source, vid, false);
}