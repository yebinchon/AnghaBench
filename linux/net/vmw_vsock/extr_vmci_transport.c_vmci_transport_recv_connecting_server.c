
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {scalar_t__ svm_cid; } ;
struct TYPE_9__ {scalar_t__ svm_cid; } ;
struct vsock_sock {TYPE_5__ remote_addr; TYPE_2__ local_addr; } ;
struct TYPE_10__ {int context; } ;
struct TYPE_11__ {TYPE_3__ src; } ;
struct vmci_handle {int dummy; } ;
struct TYPE_8__ {struct vmci_handle handle; } ;
struct vmci_transport_packet {int type; TYPE_4__ dg; TYPE_1__ u; } ;
struct vmci_qp {int dummy; } ;
struct sock {int sk_err; int sk_state; int (* sk_data_ready ) (struct sock*) ;} ;
struct TYPE_13__ {struct vmci_qp* qpair; struct vmci_handle qp_handle; int consume_size; int produce_size; int detach_sub_id; } ;


 int EINVAL ;
 int EPROTO ;
 int TCP_CLOSE ;
 int TCP_ESTABLISHED ;
 int VMCI_EVENT_QP_PEER_DETACH ;
 int VMCI_INVALID_ID ;
 int VMCI_QPFLAG_ATTACH_ONLY ;
 int VMCI_QPFLAG_LOCAL ;
 int VMCI_SUCCESS ;

 int VMCI_TRANSPORT_PACKET_TYPE_RST ;
 int pr_err (char*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;
 int vmci_event_subscribe (int ,int ,TYPE_6__*,int *) ;
 int vmci_handle_is_invalid (struct vmci_handle) ;
 TYPE_6__* vmci_trans (struct vsock_sock*) ;
 int vmci_transport_error_to_vsock_error (int) ;
 int vmci_transport_is_trusted (struct vsock_sock*,scalar_t__) ;
 int vmci_transport_peer_detach_cb ;
 int vmci_transport_queue_pair_alloc (struct vmci_qp**,struct vmci_handle*,int ,int ,int ,int ,int ) ;
 int vmci_transport_send_attach (struct sock*,struct vmci_handle) ;
 int vmci_transport_send_reset (struct sock*,struct vmci_transport_packet*) ;
 int vsock_enqueue_accept (struct sock*,struct sock*) ;
 int vsock_insert_connected (struct vsock_sock*) ;
 int vsock_remove_connected (struct vsock_sock*) ;
 int vsock_remove_pending (struct sock*,struct sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static int
vmci_transport_recv_connecting_server(struct sock *listener,
          struct sock *pending,
          struct vmci_transport_packet *pkt)
{
 struct vsock_sock *vpending;
 struct vmci_handle handle;
 struct vmci_qp *qpair;
 bool is_local;
 u32 flags;
 u32 detach_sub_id;
 int err;
 int skerr;

 vpending = vsock_sk(pending);
 detach_sub_id = VMCI_INVALID_ID;

 switch (pkt->type) {
 case 128:
  if (vmci_handle_is_invalid(pkt->u.handle)) {
   vmci_transport_send_reset(pending, pkt);
   skerr = EPROTO;
   err = -EINVAL;
   goto destroy;
  }
  break;
 default:

  vmci_transport_send_reset(pending, pkt);
  skerr = EPROTO;
  err = pkt->type == VMCI_TRANSPORT_PACKET_TYPE_RST ? 0 : -EINVAL;
  goto destroy;
 }
 err = vmci_event_subscribe(VMCI_EVENT_QP_PEER_DETACH,
       vmci_transport_peer_detach_cb,
       vmci_trans(vpending), &detach_sub_id);
 if (err < VMCI_SUCCESS) {
  vmci_transport_send_reset(pending, pkt);
  err = vmci_transport_error_to_vsock_error(err);
  skerr = -err;
  goto destroy;
 }

 vmci_trans(vpending)->detach_sub_id = detach_sub_id;


 handle = pkt->u.handle;




 is_local =
     vpending->remote_addr.svm_cid == vpending->local_addr.svm_cid;
 flags = VMCI_QPFLAG_ATTACH_ONLY;
 flags |= is_local ? VMCI_QPFLAG_LOCAL : 0;

 err = vmci_transport_queue_pair_alloc(
     &qpair,
     &handle,
     vmci_trans(vpending)->produce_size,
     vmci_trans(vpending)->consume_size,
     pkt->dg.src.context,
     flags,
     vmci_transport_is_trusted(
      vpending,
      vpending->remote_addr.svm_cid));
 if (err < 0) {
  vmci_transport_send_reset(pending, pkt);
  skerr = -err;
  goto destroy;
 }

 vmci_trans(vpending)->qp_handle = handle;
 vmci_trans(vpending)->qpair = qpair;
 pending->sk_state = TCP_ESTABLISHED;

 vsock_insert_connected(vpending);


 err = vmci_transport_send_attach(pending, handle);
 if (err < 0) {
  vsock_remove_connected(vpending);
  pr_err("Could not send attach\n");
  vmci_transport_send_reset(pending, pkt);
  err = vmci_transport_error_to_vsock_error(err);
  skerr = -err;
  goto destroy;
 }





 vsock_remove_pending(listener, pending);
 vsock_enqueue_accept(listener, pending);




 listener->sk_data_ready(listener);

 return 0;

destroy:
 pending->sk_err = skerr;
 pending->sk_state = TCP_CLOSE;







 sock_put(pending);

 return err;
}
