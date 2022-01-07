
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {int dummy; } ;
struct vmci_transport_recv_notify_data {int consume_head; int produce_tail; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int qpair; } ;


 int vmci_qpair_get_consume_indexes (int ,int *,int *) ;
 TYPE_1__* vmci_trans (struct vsock_sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static int
vmci_transport_notify_pkt_recv_pre_dequeue(
    struct sock *sk,
    size_t target,
    struct vmci_transport_recv_notify_data *data)
{
 struct vsock_sock *vsk = vsock_sk(sk);
 return 0;
}
