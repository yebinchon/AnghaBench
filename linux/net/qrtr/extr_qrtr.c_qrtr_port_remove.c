
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_qrtr {int sq_port; int sq_node; int sq_family; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int sq_port; int sq_node; } ;
struct qrtr_sock {int sk; TYPE_2__ us; } ;
struct TYPE_3__ {void* port; void* node; } ;
struct qrtr_ctrl_pkt {TYPE_1__ client; void* cmd; } ;


 int AF_QIPCRTR ;
 int QRTR_NODE_BCAST ;
 int QRTR_PORT_CTRL ;
 int QRTR_TYPE_DEL_CLIENT ;
 int __sock_put (int *) ;
 void* cpu_to_le32 (int) ;
 int idr_remove (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sk_buff* qrtr_alloc_ctrl_packet (struct qrtr_ctrl_pkt**) ;
 int qrtr_bcast_enqueue (int *,struct sk_buff*,int,TYPE_2__*,struct sockaddr_qrtr*) ;
 int qrtr_port_lock ;
 int qrtr_ports ;
 int skb_set_owner_w (struct sk_buff*,int *) ;

__attribute__((used)) static void qrtr_port_remove(struct qrtr_sock *ipc)
{
 struct qrtr_ctrl_pkt *pkt;
 struct sk_buff *skb;
 int port = ipc->us.sq_port;
 struct sockaddr_qrtr to;

 to.sq_family = AF_QIPCRTR;
 to.sq_node = QRTR_NODE_BCAST;
 to.sq_port = QRTR_PORT_CTRL;

 skb = qrtr_alloc_ctrl_packet(&pkt);
 if (skb) {
  pkt->cmd = cpu_to_le32(QRTR_TYPE_DEL_CLIENT);
  pkt->client.node = cpu_to_le32(ipc->us.sq_node);
  pkt->client.port = cpu_to_le32(ipc->us.sq_port);

  skb_set_owner_w(skb, &ipc->sk);
  qrtr_bcast_enqueue(((void*)0), skb, QRTR_TYPE_DEL_CLIENT, &ipc->us,
       &to);
 }

 if (port == QRTR_PORT_CTRL)
  port = 0;

 __sock_put(&ipc->sk);

 mutex_lock(&qrtr_port_lock);
 idr_remove(&qrtr_ports, port);
 mutex_unlock(&qrtr_port_lock);
}
