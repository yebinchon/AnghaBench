
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int dummy; } ;
struct vmci_transport_recv_notify_data {int notify_on_block; scalar_t__ produce_tail; scalar_t__ consume_head; } ;
struct sock {int dummy; } ;


 size_t PKT_FIELD (struct vsock_sock*,int ) ;
 struct vsock_sock* vsock_sk (struct sock*) ;
 int write_notify_min_window ;
 int write_notify_window ;

__attribute__((used)) static int
vmci_transport_notify_pkt_recv_init(
   struct sock *sk,
   size_t target,
   struct vmci_transport_recv_notify_data *data)
{
 struct vsock_sock *vsk = vsock_sk(sk);
 return 0;
}
