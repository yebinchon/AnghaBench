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
typedef  scalar_t__ u16 ;
struct tipc_msg {int dummy; } ;
struct tipc_link {TYPE_1__* bc_sndlink; int /*<<< orphan*/  net; int /*<<< orphan*/  addr; scalar_t__ rcv_nxt; int /*<<< orphan*/  deferdq; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ snd_nxt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCAST_PROTOCOL ; 
 int /*<<< orphan*/  INT_H_SIZE ; 
 int /*<<< orphan*/  STATE_MSG ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,struct sk_buff*) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC11(struct tipc_link *l, bool bcast,
					 u16 peers_snd_nxt,
					 struct sk_buff_head *xmitq)
{
	struct sk_buff *skb;
	struct tipc_msg *hdr;
	struct sk_buff *dfrd_skb = FUNC8(&l->deferdq);
	u16 ack = l->rcv_nxt - 1;
	u16 gap_to = peers_snd_nxt - 1;

	skb = FUNC9(BCAST_PROTOCOL, STATE_MSG, INT_H_SIZE,
			      0, l->addr, FUNC10(l->net), 0, 0, 0);
	if (!skb)
		return false;
	hdr = FUNC1(skb);
	FUNC6(hdr, l->bc_sndlink->snd_nxt - 1);
	FUNC3(hdr, ack);
	FUNC4(hdr, ack);
	if (dfrd_skb)
		gap_to = FUNC2(dfrd_skb) - 1;
	FUNC5(hdr, gap_to);
	FUNC7(hdr, bcast);
	FUNC0(xmitq, skb);
	return true;
}