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
struct qrtr_node {int /*<<< orphan*/  item; struct qrtr_endpoint* ep; int /*<<< orphan*/  nid; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  ep_lock; int /*<<< orphan*/  ref; int /*<<< orphan*/  work; } ;
struct qrtr_endpoint {struct qrtr_node* node; int /*<<< orphan*/  xmit; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QRTR_EP_NID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct qrtr_node* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qrtr_all_nodes ; 
 int /*<<< orphan*/  FUNC7 (struct qrtr_node*,unsigned int) ; 
 int /*<<< orphan*/  qrtr_node_lock ; 
 int /*<<< orphan*/  qrtr_node_rx_work ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct qrtr_endpoint *ep, unsigned int nid)
{
	struct qrtr_node *node;

	if (!ep || !ep->xmit)
		return -EINVAL;

	node = FUNC2(sizeof(*node), GFP_KERNEL);
	if (!node)
		return -ENOMEM;

	FUNC0(&node->work, qrtr_node_rx_work);
	FUNC1(&node->ref);
	FUNC4(&node->ep_lock);
	FUNC8(&node->rx_queue);
	node->nid = QRTR_EP_NID_AUTO;
	node->ep = ep;

	FUNC7(node, nid);

	FUNC5(&qrtr_node_lock);
	FUNC3(&node->item, &qrtr_all_nodes);
	FUNC6(&qrtr_node_lock);
	ep->node = node;

	return 0;
}