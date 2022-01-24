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
struct sockaddr_qrtr {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct sk_buff {int dummy; } ;
struct qrtr_node {int /*<<< orphan*/  ep_lock; int /*<<< orphan*/ * ep; int /*<<< orphan*/  nid; } ;
struct qrtr_endpoint {struct qrtr_node* node; } ;
struct qrtr_ctrl_pkt {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_QIPCRTR ; 
 int /*<<< orphan*/  QRTR_PORT_CTRL ; 
 int /*<<< orphan*/  QRTR_TYPE_BYE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC3 (struct qrtr_ctrl_pkt**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,struct sockaddr_qrtr*,struct sockaddr_qrtr*) ; 
 int /*<<< orphan*/  qrtr_local_nid ; 
 int /*<<< orphan*/  FUNC5 (struct qrtr_node*) ; 

void FUNC6(struct qrtr_endpoint *ep)
{
	struct qrtr_node *node = ep->node;
	struct sockaddr_qrtr src = {AF_QIPCRTR, node->nid, QRTR_PORT_CTRL};
	struct sockaddr_qrtr dst = {AF_QIPCRTR, qrtr_local_nid, QRTR_PORT_CTRL};
	struct qrtr_ctrl_pkt *pkt;
	struct sk_buff *skb;

	FUNC1(&node->ep_lock);
	node->ep = NULL;
	FUNC2(&node->ep_lock);

	/* Notify the local controller about the event */
	skb = FUNC3(&pkt);
	if (skb) {
		pkt->cmd = FUNC0(QRTR_TYPE_BYE);
		FUNC4(NULL, skb, QRTR_TYPE_BYE, &src, &dst);
	}

	FUNC5(node);
	ep->node = NULL;
}