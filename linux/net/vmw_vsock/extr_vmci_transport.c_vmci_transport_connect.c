
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {void* sk_state; } ;
struct vsock_sock {int sent_request; struct sock sk; } ;
struct TYPE_2__ {int queue_pair_size; } ;


 void* TCP_CLOSE ;
 TYPE_1__* vmci_trans (struct vsock_sock*) ;
 int vmci_transport_new_proto_supported_versions () ;
 scalar_t__ vmci_transport_old_proto_override (int*) ;
 int vmci_transport_send_conn_request (struct sock*,int ) ;
 int vmci_transport_send_conn_request2 (struct sock*,int ,int) ;

__attribute__((used)) static int vmci_transport_connect(struct vsock_sock *vsk)
{
 int err;
 bool old_pkt_proto = 0;
 struct sock *sk = &vsk->sk;

 if (vmci_transport_old_proto_override(&old_pkt_proto) &&
  old_pkt_proto) {
  err = vmci_transport_send_conn_request(
   sk, vmci_trans(vsk)->queue_pair_size);
  if (err < 0) {
   sk->sk_state = TCP_CLOSE;
   return err;
  }
 } else {
  int supported_proto_versions =
   vmci_transport_new_proto_supported_versions();
  err = vmci_transport_send_conn_request2(
    sk, vmci_trans(vsk)->queue_pair_size,
    supported_proto_versions);
  if (err < 0) {
   sk->sk_state = TCP_CLOSE;
   return err;
  }

  vsk->sent_request = 1;
 }

 return err;
}
