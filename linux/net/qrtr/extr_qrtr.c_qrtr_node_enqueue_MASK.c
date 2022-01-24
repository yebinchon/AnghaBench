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
struct sockaddr_qrtr {size_t sq_node; size_t sq_port; } ;
struct sk_buff {size_t len; } ;
struct qrtr_node {size_t nid; int /*<<< orphan*/  ep_lock; TYPE_1__* ep; } ;
struct qrtr_hdr_v1 {scalar_t__ confirm_rx; void* size; void* dst_port_id; void* dst_node_id; void* src_port_id; void* src_node_id; void* type; void* version; } ;
struct TYPE_2__ {int (* xmit ) (TYPE_1__*,struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int) ; 
 int ENODEV ; 
 size_t QRTR_NODE_BCAST ; 
 size_t QRTR_PORT_CTRL ; 
 size_t QRTR_PROTO_VER_1 ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct qrtr_hdr_v1* FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct qrtr_node *node, struct sk_buff *skb,
			     int type, struct sockaddr_qrtr *from,
			     struct sockaddr_qrtr *to)
{
	struct qrtr_hdr_v1 *hdr;
	size_t len = skb->len;
	int rc = -ENODEV;

	hdr = FUNC5(skb, sizeof(*hdr));
	hdr->version = FUNC1(QRTR_PROTO_VER_1);
	hdr->type = FUNC1(type);
	hdr->src_node_id = FUNC1(from->sq_node);
	hdr->src_port_id = FUNC1(from->sq_port);
	if (to->sq_port == QRTR_PORT_CTRL) {
		hdr->dst_node_id = FUNC1(node->nid);
		hdr->dst_port_id = FUNC1(QRTR_NODE_BCAST);
	} else {
		hdr->dst_node_id = FUNC1(to->sq_node);
		hdr->dst_port_id = FUNC1(to->sq_port);
	}

	hdr->size = FUNC1(len);
	hdr->confirm_rx = 0;

	FUNC6(skb, FUNC0(len, 4));

	FUNC3(&node->ep_lock);
	if (node->ep)
		rc = node->ep->xmit(node->ep, skb);
	else
		FUNC2(skb);
	FUNC4(&node->ep_lock);

	return rc;
}