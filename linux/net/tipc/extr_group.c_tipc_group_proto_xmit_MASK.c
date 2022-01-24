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
struct tipc_msg {int dummy; } ;
struct tipc_member {scalar_t__ state; int advertised; int /*<<< orphan*/  window; int /*<<< orphan*/  bc_rcv_nxt; int /*<<< orphan*/  port; int /*<<< orphan*/  node; } ;
struct tipc_group {int /*<<< orphan*/  bc_snd_nxt; int /*<<< orphan*/  portid; int /*<<< orphan*/  net; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int ADV_ACTIVE ; 
 int ADV_IDLE ; 
 int /*<<< orphan*/  GROUP_PROTOCOL ; 
 int GRP_ACK_MSG ; 
 int GRP_ADV_MSG ; 
 int GRP_JOIN_MSG ; 
 int GRP_LEAVE_MSG ; 
 int GRP_REMIT_MSG ; 
 int /*<<< orphan*/  INT_H_SIZE ; 
 scalar_t__ MBR_ACTIVE ; 
 scalar_t__ MBR_JOINED ; 
 scalar_t__ MBR_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,struct sk_buff*) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct tipc_group *grp, struct tipc_member *m,
				  int mtyp, struct sk_buff_head *xmitq)
{
	struct tipc_msg *hdr;
	struct sk_buff *skb;
	int adv = 0;

	skb = FUNC7(GROUP_PROTOCOL, mtyp, INT_H_SIZE, 0,
			      m->node, FUNC8(grp->net),
			      m->port, grp->portid, 0);
	if (!skb)
		return;

	if (m->state == MBR_ACTIVE)
		adv = ADV_ACTIVE - m->advertised;
	else if (m->state == MBR_JOINED || m->state == MBR_PENDING)
		adv = ADV_IDLE - m->advertised;

	hdr = FUNC1(skb);

	if (mtyp == GRP_JOIN_MSG) {
		FUNC5(hdr, grp->bc_snd_nxt);
		FUNC2(hdr, adv);
		m->advertised += adv;
	} else if (mtyp == GRP_LEAVE_MSG) {
		FUNC5(hdr, grp->bc_snd_nxt);
	} else if (mtyp == GRP_ADV_MSG) {
		FUNC2(hdr, adv);
		m->advertised += adv;
	} else if (mtyp == GRP_ACK_MSG) {
		FUNC4(hdr, m->bc_rcv_nxt);
	} else if (mtyp == GRP_REMIT_MSG) {
		FUNC6(hdr, m->window);
	}
	FUNC3(hdr, true);
	FUNC0(xmitq, skb);
}