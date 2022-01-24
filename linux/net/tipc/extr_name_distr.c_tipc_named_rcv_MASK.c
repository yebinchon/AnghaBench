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
typedef  int uint ;
typedef  int /*<<< orphan*/  u32 ;
struct tipc_net {int /*<<< orphan*/  nametbl_lock; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct distr_item {int dummy; } ;

/* Variables and functions */
 int ITEM_SIZE ; 
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct tipc_msg*) ; 
 int FUNC3 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*) ; 
 int FUNC5 (struct tipc_msg*) ; 
 struct tipc_net* FUNC6 (struct net*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_net_id ; 
 int /*<<< orphan*/  FUNC11 (struct net*,struct distr_item*,int /*<<< orphan*/ ,int) ; 

void FUNC12(struct net *net, struct sk_buff_head *inputq)
{
	struct tipc_net *tn = FUNC6(net, tipc_net_id);
	struct tipc_msg *msg;
	struct distr_item *item;
	uint count;
	u32 node;
	struct sk_buff *skb;
	int mtype;

	FUNC9(&tn->nametbl_lock);
	for (skb = FUNC7(inputq); skb; skb = FUNC7(inputq)) {
		FUNC8(skb);
		msg = FUNC0(skb);
		mtype = FUNC5(msg);
		item = (struct distr_item *)FUNC2(msg);
		count = FUNC3(msg) / ITEM_SIZE;
		node = FUNC4(msg);
		while (count--) {
			FUNC11(net, item, node, mtype);
			item++;
		}
		FUNC1(skb);
	}
	FUNC10(&tn->nametbl_lock);
}