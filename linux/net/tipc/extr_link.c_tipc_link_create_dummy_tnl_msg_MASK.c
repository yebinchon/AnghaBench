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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_msg {int dummy; } ;
struct tipc_link {int /*<<< orphan*/  peer_bearer_id; int /*<<< orphan*/  addr; int /*<<< orphan*/  net; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BASIC_H_SIZE ; 
 int /*<<< orphan*/  FAILOVER_MSG ; 
 int /*<<< orphan*/  INT_H_SIZE ; 
 int /*<<< orphan*/  TIPC_DIRECT_MSG ; 
 int /*<<< orphan*/  TIPC_ERR_NO_PORT ; 
 int /*<<< orphan*/  TIPC_LOW_IMPORTANCE ; 
 int /*<<< orphan*/  TUNNEL_PROTOCOL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*,struct sk_buff*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  link_co_err ; 
 scalar_t__ FUNC3 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_link*,struct sk_buff_head*,struct sk_buff_head*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct tipc_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(struct tipc_link *l,
				    struct sk_buff_head *xmitq)
{
	u32 onode = FUNC11(l->net);
	struct tipc_msg *hdr, *ihdr;
	struct sk_buff_head tnlq;
	struct sk_buff *skb;
	u32 dnode = l->addr;

	FUNC0(&tnlq);
	skb = FUNC9(TUNNEL_PROTOCOL, FAILOVER_MSG,
			      INT_H_SIZE, BASIC_H_SIZE,
			      dnode, onode, 0, 0, 0);
	if (!skb) {
		FUNC7("%sunable to create tunnel packet\n", link_co_err);
		return;
	}

	hdr = FUNC2(skb);
	FUNC6(hdr, 1);
	FUNC4(hdr, l->peer_bearer_id);

	ihdr = (struct tipc_msg *)FUNC3(hdr);
	FUNC10(onode, ihdr, TIPC_LOW_IMPORTANCE, TIPC_DIRECT_MSG,
		      BASIC_H_SIZE, dnode);
	FUNC5(ihdr, TIPC_ERR_NO_PORT);
	FUNC1(&tnlq, skb);
	FUNC8(l, &tnlq, xmitq);
}