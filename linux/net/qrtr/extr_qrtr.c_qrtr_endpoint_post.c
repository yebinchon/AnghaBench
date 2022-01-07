
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ cb; } ;
struct qrtr_node {int work; int rx_queue; } ;
struct qrtr_hdr_v2 {scalar_t__ type; int flags; int size; int dst_port_id; int dst_node_id; int src_port_id; int src_node_id; int optlen; } ;
struct qrtr_hdr_v1 {int size; int dst_port_id; int dst_node_id; int confirm_rx; int src_port_id; int src_node_id; int type; } ;
struct qrtr_endpoint {struct qrtr_node* node; } ;
struct qrtr_cb {scalar_t__ type; scalar_t__ src_port; int confirm_rx; scalar_t__ dst_port; void* dst_node; void* src_node; } ;


 size_t ALIGN (unsigned int,int) ;
 int EINVAL ;
 int ENOMEM ;
 int QRTR_FLAGS_CONFIRM_RX ;
 scalar_t__ QRTR_PORT_CTRL ;


 scalar_t__ QRTR_TYPE_DATA ;
 int kfree_skb (struct sk_buff*) ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 struct sk_buff* netdev_alloc_skb (int *,size_t) ;
 int pr_err (char*,unsigned int) ;
 int schedule_work (int *) ;
 int skb_put_data (struct sk_buff*,void const*,unsigned int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

int qrtr_endpoint_post(struct qrtr_endpoint *ep, const void *data, size_t len)
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

 skb = netdev_alloc_skb(((void*)0), len);
 if (!skb)
  return -ENOMEM;

 cb = (struct qrtr_cb *)skb->cb;


 ver = *(u8*)data;

 switch (ver) {
 case 129:
  v1 = data;
  hdrlen = sizeof(*v1);

  cb->type = le32_to_cpu(v1->type);
  cb->src_node = le32_to_cpu(v1->src_node_id);
  cb->src_port = le32_to_cpu(v1->src_port_id);
  cb->confirm_rx = !!v1->confirm_rx;
  cb->dst_node = le32_to_cpu(v1->dst_node_id);
  cb->dst_port = le32_to_cpu(v1->dst_port_id);

  size = le32_to_cpu(v1->size);
  break;
 case 128:
  v2 = data;
  hdrlen = sizeof(*v2) + v2->optlen;

  cb->type = v2->type;
  cb->confirm_rx = !!(v2->flags & QRTR_FLAGS_CONFIRM_RX);
  cb->src_node = le16_to_cpu(v2->src_node_id);
  cb->src_port = le16_to_cpu(v2->src_port_id);
  cb->dst_node = le16_to_cpu(v2->dst_node_id);
  cb->dst_port = le16_to_cpu(v2->dst_port_id);

  if (cb->src_port == (u16)QRTR_PORT_CTRL)
   cb->src_port = QRTR_PORT_CTRL;
  if (cb->dst_port == (u16)QRTR_PORT_CTRL)
   cb->dst_port = QRTR_PORT_CTRL;

  size = le32_to_cpu(v2->size);
  break;
 default:
  pr_err("qrtr: Invalid version %d\n", ver);
  goto err;
 }

 if (len != ALIGN(size, 4) + hdrlen)
  goto err;

 if (cb->dst_port != QRTR_PORT_CTRL && cb->type != QRTR_TYPE_DATA)
  goto err;

 skb_put_data(skb, data + hdrlen, size);

 skb_queue_tail(&node->rx_queue, skb);
 schedule_work(&node->work);

 return 0;

err:
 kfree_skb(skb);
 return -EINVAL;

}
