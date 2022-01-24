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
typedef  unsigned int u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ cb; } ;
struct qrtr_node {int /*<<< orphan*/  work; int /*<<< orphan*/  rx_queue; } ;
struct qrtr_hdr_v2 {scalar_t__ type; int flags; int /*<<< orphan*/  size; int /*<<< orphan*/  dst_port_id; int /*<<< orphan*/  dst_node_id; int /*<<< orphan*/  src_port_id; int /*<<< orphan*/  src_node_id; int /*<<< orphan*/  optlen; } ;
struct qrtr_hdr_v1 {int /*<<< orphan*/  size; int /*<<< orphan*/  dst_port_id; int /*<<< orphan*/  dst_node_id; int /*<<< orphan*/  confirm_rx; int /*<<< orphan*/  src_port_id; int /*<<< orphan*/  src_node_id; int /*<<< orphan*/  type; } ;
struct qrtr_endpoint {struct qrtr_node* node; } ;
struct qrtr_cb {scalar_t__ type; scalar_t__ src_port; int confirm_rx; scalar_t__ dst_port; void* dst_node; void* src_node; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned int,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int QRTR_FLAGS_CONFIRM_RX ; 
 scalar_t__ QRTR_PORT_CTRL ; 
#define  QRTR_PROTO_VER_1 129 
#define  QRTR_PROTO_VER_2 128 
 scalar_t__ QRTR_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC9(struct qrtr_endpoint *ep, const void *data, size_t len)
{
	struct qrtr_node *node = ep->node;
	const struct qrtr_hdr_v1 *v1;
	const struct qrtr_hdr_v2 *v2;
	struct sk_buff *skb;
	struct qrtr_cb *cb;
	unsigned int size;
	unsigned int ver;
	size_t hdrlen;

	if (len & 3)
		return -EINVAL;

	skb = FUNC4(NULL, len);
	if (!skb)
		return -ENOMEM;

	cb = (struct qrtr_cb *)skb->cb;

	/* Version field in v1 is little endian, so this works for both cases */
	ver = *(u8*)data;

	switch (ver) {
	case QRTR_PROTO_VER_1:
		v1 = data;
		hdrlen = sizeof(*v1);

		cb->type = FUNC3(v1->type);
		cb->src_node = FUNC3(v1->src_node_id);
		cb->src_port = FUNC3(v1->src_port_id);
		cb->confirm_rx = !!v1->confirm_rx;
		cb->dst_node = FUNC3(v1->dst_node_id);
		cb->dst_port = FUNC3(v1->dst_port_id);

		size = FUNC3(v1->size);
		break;
	case QRTR_PROTO_VER_2:
		v2 = data;
		hdrlen = sizeof(*v2) + v2->optlen;

		cb->type = v2->type;
		cb->confirm_rx = !!(v2->flags & QRTR_FLAGS_CONFIRM_RX);
		cb->src_node = FUNC2(v2->src_node_id);
		cb->src_port = FUNC2(v2->src_port_id);
		cb->dst_node = FUNC2(v2->dst_node_id);
		cb->dst_port = FUNC2(v2->dst_port_id);

		if (cb->src_port == (u16)QRTR_PORT_CTRL)
			cb->src_port = QRTR_PORT_CTRL;
		if (cb->dst_port == (u16)QRTR_PORT_CTRL)
			cb->dst_port = QRTR_PORT_CTRL;

		size = FUNC3(v2->size);
		break;
	default:
		FUNC5("qrtr: Invalid version %d\n", ver);
		goto err;
	}

	if (len != FUNC0(size, 4) + hdrlen)
		goto err;

	if (cb->dst_port != QRTR_PORT_CTRL && cb->type != QRTR_TYPE_DATA)
		goto err;

	FUNC7(skb, data + hdrlen, size);

	FUNC8(&node->rx_queue, skb);
	FUNC6(&node->work);

	return 0;

err:
	FUNC1(skb);
	return -EINVAL;

}