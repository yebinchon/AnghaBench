
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_qrtr {int member_2; int member_1; int member_0; } ;
struct sk_buff {int dummy; } ;
struct qrtr_node {int ep_lock; int * ep; int nid; } ;
struct qrtr_endpoint {struct qrtr_node* node; } ;
struct qrtr_ctrl_pkt {int cmd; } ;


 int AF_QIPCRTR ;
 int QRTR_PORT_CTRL ;
 int QRTR_TYPE_BYE ;
 int cpu_to_le32 (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sk_buff* qrtr_alloc_ctrl_packet (struct qrtr_ctrl_pkt**) ;
 int qrtr_local_enqueue (int *,struct sk_buff*,int ,struct sockaddr_qrtr*,struct sockaddr_qrtr*) ;
 int qrtr_local_nid ;
 int qrtr_node_release (struct qrtr_node*) ;

void qrtr_endpoint_unregister(struct qrtr_endpoint *ep)
{
 struct qrtr_node *node = ep->node;
 struct sockaddr_qrtr src = {AF_QIPCRTR, node->nid, QRTR_PORT_CTRL};
 struct sockaddr_qrtr dst = {AF_QIPCRTR, qrtr_local_nid, QRTR_PORT_CTRL};
 struct qrtr_ctrl_pkt *pkt;
 struct sk_buff *skb;

 mutex_lock(&node->ep_lock);
 node->ep = ((void*)0);
 mutex_unlock(&node->ep_lock);


 skb = qrtr_alloc_ctrl_packet(&pkt);
 if (skb) {
  pkt->cmd = cpu_to_le32(QRTR_TYPE_BYE);
  qrtr_local_enqueue(((void*)0), skb, QRTR_TYPE_BYE, &src, &dst);
 }

 qrtr_node_release(node);
 ep->node = ((void*)0);
}
