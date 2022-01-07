
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qrtr_node {int item; struct qrtr_endpoint* ep; int nid; int rx_queue; int ep_lock; int ref; int work; } ;
struct qrtr_endpoint {struct qrtr_node* node; int xmit; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int QRTR_EP_NID_AUTO ;
 int kref_init (int *) ;
 struct qrtr_node* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qrtr_all_nodes ;
 int qrtr_node_assign (struct qrtr_node*,unsigned int) ;
 int qrtr_node_lock ;
 int qrtr_node_rx_work ;
 int skb_queue_head_init (int *) ;

int qrtr_endpoint_register(struct qrtr_endpoint *ep, unsigned int nid)
{
 struct qrtr_node *node;

 if (!ep || !ep->xmit)
  return -EINVAL;

 node = kzalloc(sizeof(*node), GFP_KERNEL);
 if (!node)
  return -ENOMEM;

 INIT_WORK(&node->work, qrtr_node_rx_work);
 kref_init(&node->ref);
 mutex_init(&node->ep_lock);
 skb_queue_head_init(&node->rx_queue);
 node->nid = QRTR_EP_NID_AUTO;
 node->ep = ep;

 qrtr_node_assign(node, nid);

 mutex_lock(&qrtr_node_lock);
 list_add(&node->item, &qrtr_all_nodes);
 mutex_unlock(&qrtr_node_lock);
 ep->node = node;

 return 0;
}
