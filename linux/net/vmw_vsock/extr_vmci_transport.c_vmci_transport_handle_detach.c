
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ svm_cid; } ;
struct vsock_sock {TYPE_1__ local_addr; int peer_shutdown; } ;
struct sock {scalar_t__ sk_state; int (* sk_state_change ) (struct sock*) ;int (* sk_error_report ) (struct sock*) ;int sk_err; } ;
struct TYPE_4__ {int qp_handle; } ;


 int ECONNRESET ;
 int SHUTDOWN_MASK ;
 int SOCK_DONE ;
 void* TCP_CLOSE ;
 scalar_t__ TCP_SYN_SENT ;
 scalar_t__ VMADDR_CID_HOST ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 int vmci_handle_is_invalid (int ) ;
 TYPE_2__* vmci_trans (struct vsock_sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;
 scalar_t__ vsock_stream_has_data (struct vsock_sock*) ;

__attribute__((used)) static void vmci_transport_handle_detach(struct sock *sk)
{
 struct vsock_sock *vsk;

 vsk = vsock_sk(sk);
 if (!vmci_handle_is_invalid(vmci_trans(vsk)->qp_handle)) {
  sock_set_flag(sk, SOCK_DONE);




  vsk->peer_shutdown = SHUTDOWN_MASK;
  if (vsk->local_addr.svm_cid == VMADDR_CID_HOST ||
      vsock_stream_has_data(vsk) <= 0) {
   if (sk->sk_state == TCP_SYN_SENT) {
    sk->sk_state = TCP_CLOSE;
    sk->sk_err = ECONNRESET;
    sk->sk_error_report(sk);
    return;
   }
   sk->sk_state = TCP_CLOSE;
  }
  sk->sk_state_change(sk);
 }
}
