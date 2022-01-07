
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_12__ {scalar_t__ svm_cid; } ;
struct TYPE_11__ {scalar_t__ svm_cid; } ;
struct vsock_sock {int sent_request; int ignore_connecting_rst; TYPE_4__ remote_addr; TYPE_3__ local_addr; } ;
struct TYPE_13__ {scalar_t__ size; } ;
struct TYPE_9__ {scalar_t__ context; } ;
struct TYPE_10__ {TYPE_1__ dst; } ;
struct vmci_transport_packet {scalar_t__ type; TYPE_5__ u; int proto; TYPE_2__ dg; } ;
struct vmci_qp {int dummy; } ;
struct vmci_handle {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_15__ {scalar_t__ queue_pair_min_size; scalar_t__ queue_pair_max_size; scalar_t__ produce_size; scalar_t__ consume_size; TYPE_6__* notify_ops; scalar_t__ detach_sub_id; struct vmci_qp* qpair; struct vmci_handle qp_handle; } ;
struct TYPE_14__ {int (* process_negotiate ) (struct sock*) ;} ;


 int EINVAL ;
 scalar_t__ VMADDR_CID_ANY ;
 int VMCI_EVENT_QP_PEER_DETACH ;
 struct vmci_handle VMCI_INVALID_HANDLE ;
 scalar_t__ VMCI_INVALID_ID ;
 scalar_t__ VMCI_QPFLAG_LOCAL ;
 int VMCI_SUCCESS ;
 scalar_t__ VMCI_TRANSPORT_PACKET_TYPE_NEGOTIATE ;
 scalar_t__ VMCI_TRANSPORT_PACKET_TYPE_NEGOTIATE2 ;
 int VSOCK_PROTO_INVALID ;
 int stub1 (struct sock*) ;
 int vmci_event_subscribe (int ,int ,TYPE_7__*,scalar_t__*) ;
 int vmci_event_unsubscribe (scalar_t__) ;
 int vmci_handle_is_invalid (struct vmci_handle) ;
 int vmci_qpair_detach (struct vmci_qp**) ;
 TYPE_7__* vmci_trans (struct vsock_sock*) ;
 int vmci_transport_error_to_vsock_error (int) ;
 int vmci_transport_is_trusted (struct vsock_sock*,scalar_t__) ;
 scalar_t__ vmci_transport_old_proto_override (int*) ;
 int vmci_transport_peer_detach_cb ;
 int vmci_transport_proto_to_notify_struct (struct sock*,int *,int) ;
 int vmci_transport_queue_pair_alloc (struct vmci_qp**,struct vmci_handle*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int vmci_transport_send_qp_offer (struct sock*,struct vmci_handle) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static int vmci_transport_recv_connecting_client_negotiate(
     struct sock *sk,
     struct vmci_transport_packet *pkt)
{
 int err;
 struct vsock_sock *vsk;
 struct vmci_handle handle;
 struct vmci_qp *qpair;
 u32 detach_sub_id;
 bool is_local;
 u32 flags;
 bool old_proto = 1;
 bool old_pkt_proto;
 u16 version;

 vsk = vsock_sk(sk);
 handle = VMCI_INVALID_HANDLE;
 detach_sub_id = VMCI_INVALID_ID;




 vsk->sent_request = 0;
 vsk->ignore_connecting_rst = 0;


 if (pkt->u.size < vmci_trans(vsk)->queue_pair_min_size ||
     pkt->u.size > vmci_trans(vsk)->queue_pair_max_size) {
  err = -EINVAL;
  goto destroy;
 }



 if (vsk->local_addr.svm_cid == VMADDR_CID_ANY)
  vsk->local_addr.svm_cid = pkt->dg.dst.context;





 if (vmci_transport_old_proto_override(&old_pkt_proto)) {
  old_proto = old_pkt_proto;
 } else {
  if (pkt->type == VMCI_TRANSPORT_PACKET_TYPE_NEGOTIATE)
   old_proto = 1;
  else if (pkt->type == VMCI_TRANSPORT_PACKET_TYPE_NEGOTIATE2)
   old_proto = 0;

 }

 if (old_proto)
  version = VSOCK_PROTO_INVALID;
 else
  version = pkt->proto;

 if (!vmci_transport_proto_to_notify_struct(sk, &version, old_proto)) {
  err = -EINVAL;
  goto destroy;
 }







 err = vmci_event_subscribe(VMCI_EVENT_QP_PEER_DETACH,
       vmci_transport_peer_detach_cb,
       vmci_trans(vsk), &detach_sub_id);
 if (err < VMCI_SUCCESS) {
  err = vmci_transport_error_to_vsock_error(err);
  goto destroy;
 }


 handle = VMCI_INVALID_HANDLE;
 is_local = vsk->remote_addr.svm_cid == vsk->local_addr.svm_cid;
 flags = is_local ? VMCI_QPFLAG_LOCAL : 0;

 err = vmci_transport_queue_pair_alloc(&qpair,
           &handle,
           pkt->u.size,
           pkt->u.size,
           vsk->remote_addr.svm_cid,
           flags,
           vmci_transport_is_trusted(
        vsk,
        vsk->
        remote_addr.svm_cid));
 if (err < 0)
  goto destroy;

 err = vmci_transport_send_qp_offer(sk, handle);
 if (err < 0) {
  err = vmci_transport_error_to_vsock_error(err);
  goto destroy;
 }

 vmci_trans(vsk)->qp_handle = handle;
 vmci_trans(vsk)->qpair = qpair;

 vmci_trans(vsk)->produce_size = vmci_trans(vsk)->consume_size =
  pkt->u.size;

 vmci_trans(vsk)->detach_sub_id = detach_sub_id;

 vmci_trans(vsk)->notify_ops->process_negotiate(sk);

 return 0;

destroy:
 if (detach_sub_id != VMCI_INVALID_ID)
  vmci_event_unsubscribe(detach_sub_id);

 if (!vmci_handle_is_invalid(handle))
  vmci_qpair_detach(&qpair);

 return err;
}
