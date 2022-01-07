
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_qrtr {int sq_port; int sq_node; } ;
struct sk_buff {scalar_t__ cb; int * sk; } ;
struct qrtr_sock {int sk; } ;
struct qrtr_node {int dummy; } ;
struct qrtr_cb {int src_port; int src_node; } ;


 int ENODEV ;
 int ENOSPC ;
 int kfree_skb (struct sk_buff*) ;
 struct qrtr_sock* qrtr_port_lookup (int ) ;
 int qrtr_port_put (struct qrtr_sock*) ;
 scalar_t__ sock_queue_rcv_skb (int *,struct sk_buff*) ;

__attribute__((used)) static int qrtr_local_enqueue(struct qrtr_node *node, struct sk_buff *skb,
         int type, struct sockaddr_qrtr *from,
         struct sockaddr_qrtr *to)
{
 struct qrtr_sock *ipc;
 struct qrtr_cb *cb;

 ipc = qrtr_port_lookup(to->sq_port);
 if (!ipc || &ipc->sk == skb->sk) {
  kfree_skb(skb);
  return -ENODEV;
 }

 cb = (struct qrtr_cb *)skb->cb;
 cb->src_node = from->sq_node;
 cb->src_port = from->sq_port;

 if (sock_queue_rcv_skb(&ipc->sk, skb)) {
  qrtr_port_put(ipc);
  kfree_skb(skb);
  return -ENOSPC;
 }

 qrtr_port_put(ipc);

 return 0;
}
