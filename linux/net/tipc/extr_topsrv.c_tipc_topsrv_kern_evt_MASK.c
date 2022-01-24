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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  usr_handle; } ;
struct tipc_event {TYPE_1__ s; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_H_SIZE ; 
 int /*<<< orphan*/  TOP_SRV ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct tipc_event*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,struct sk_buff_head*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net*) ; 
 int /*<<< orphan*/  FUNC9 (struct net*,struct sk_buff_head*) ; 

__attribute__((used)) static void FUNC10(struct net *net, struct tipc_event *evt)
{
	u32 port = *(u32 *)&evt->s.usr_handle;
	u32 self = FUNC8(net);
	struct sk_buff_head evtq;
	struct sk_buff *skb;

	skb = FUNC7(TOP_SRV, 0, INT_H_SIZE, sizeof(*evt),
			      self, self, port, port, 0);
	if (!skb)
		return;
	FUNC4(FUNC1(skb), true);
	FUNC2(FUNC3(FUNC1(skb)), evt, sizeof(*evt));
	FUNC5(&evtq);
	FUNC0(&evtq, skb);
	FUNC6(net, &evtq);
	FUNC9(net, &evtq);
}