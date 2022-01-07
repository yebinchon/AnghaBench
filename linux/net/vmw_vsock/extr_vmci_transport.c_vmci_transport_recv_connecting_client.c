
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int svm_port; int svm_cid; } ;
struct vsock_sock {int ignore_connecting_rst; TYPE_5__ remote_addr; } ;
struct TYPE_9__ {int context; } ;
struct TYPE_10__ {TYPE_3__ src; } ;
struct TYPE_8__ {int size; int handle; } ;
struct vmci_transport_packet {int type; int src_port; TYPE_4__ dg; TYPE_2__ u; } ;
struct sock {int sk_err; int (* sk_error_report ) (struct sock*) ;int sk_state; int (* sk_state_change ) (struct sock*) ;TYPE_1__* sk_socket; } ;
struct TYPE_12__ {int detach_sub_id; int consume_size; int produce_size; int qpair; int qp_handle; } ;
struct TYPE_7__ {int state; } ;


 int ECONNRESET ;
 int EINVAL ;
 int EPROTO ;
 int SS_CONNECTED ;
 int TCP_CLOSE ;
 int TCP_ESTABLISHED ;
 int VMCI_INVALID_ID ;





 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 int vmci_handle_is_equal (int ,int ) ;
 int vmci_handle_is_invalid (int ) ;
 TYPE_6__* vmci_trans (struct vsock_sock*) ;
 int vmci_transport_recv_connecting_client_invalid (struct sock*,struct vmci_transport_packet*) ;
 int vmci_transport_recv_connecting_client_negotiate (struct sock*,struct vmci_transport_packet*) ;
 int vmci_transport_send_reset (struct sock*,struct vmci_transport_packet*) ;
 int vsock_insert_connected (struct vsock_sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static int
vmci_transport_recv_connecting_client(struct sock *sk,
          struct vmci_transport_packet *pkt)
{
 struct vsock_sock *vsk;
 int err;
 int skerr;

 vsk = vsock_sk(sk);

 switch (pkt->type) {
 case 132:
  if (vmci_handle_is_invalid(pkt->u.handle) ||
      !vmci_handle_is_equal(pkt->u.handle,
       vmci_trans(vsk)->qp_handle)) {
   skerr = EPROTO;
   err = -EINVAL;
   goto destroy;
  }






  sk->sk_state = TCP_ESTABLISHED;
  sk->sk_socket->state = SS_CONNECTED;
  vsock_insert_connected(vsk);
  sk->sk_state_change(sk);

  break;
 case 130:
 case 129:
  if (pkt->u.size == 0
      || pkt->dg.src.context != vsk->remote_addr.svm_cid
      || pkt->src_port != vsk->remote_addr.svm_port
      || !vmci_handle_is_invalid(vmci_trans(vsk)->qp_handle)
      || vmci_trans(vsk)->qpair
      || vmci_trans(vsk)->produce_size != 0
      || vmci_trans(vsk)->consume_size != 0
      || vmci_trans(vsk)->detach_sub_id != VMCI_INVALID_ID) {
   skerr = EPROTO;
   err = -EINVAL;

   goto destroy;
  }

  err = vmci_transport_recv_connecting_client_negotiate(sk, pkt);
  if (err) {
   skerr = -err;
   goto destroy;
  }

  break;
 case 131:
  err = vmci_transport_recv_connecting_client_invalid(sk, pkt);
  if (err) {
   skerr = -err;
   goto destroy;
  }

  break;
 case 128:
  if (vsk->ignore_connecting_rst) {
   vsk->ignore_connecting_rst = 0;
  } else {
   skerr = ECONNRESET;
   err = 0;
   goto destroy;
  }

  break;
 default:

  skerr = EPROTO;
  err = -EINVAL;
  goto destroy;
 }

 return 0;

destroy:
 vmci_transport_send_reset(sk, pkt);

 sk->sk_state = TCP_CLOSE;
 sk->sk_err = skerr;
 sk->sk_error_report(sk);
 return err;
}
