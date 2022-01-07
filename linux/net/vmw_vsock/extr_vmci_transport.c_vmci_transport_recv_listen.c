
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* u64 ;
typedef int u16 ;
struct TYPE_13__ {int svm_cid; } ;
struct vsock_sock {int pending_work; struct sock* listener; TYPE_6__ remote_addr; TYPE_6__ local_addr; } ;
struct TYPE_11__ {scalar_t__ size; } ;
struct TYPE_9__ {int context; } ;
struct TYPE_8__ {int context; } ;
struct TYPE_10__ {TYPE_2__ src; TYPE_1__ dst; } ;
struct vmci_transport_packet {scalar_t__ type; int proto; TYPE_4__ u; int src_port; TYPE_3__ dg; int dst_port; } ;
struct sock {int sk_state; scalar_t__ sk_ack_backlog; scalar_t__ sk_max_ack_backlog; int sk_type; } ;
struct TYPE_14__ {scalar_t__ queue_pair_min_size; scalar_t__ queue_pair_max_size; TYPE_5__* notify_ops; void* queue_pair_size; void* consume_size; void* produce_size; } ;
struct TYPE_12__ {int (* process_request ) (struct sock*) ;} ;


 int ECONNREFUSED ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;

 scalar_t__ VMCI_TRANSPORT_PACKET_TYPE_REQUEST ;
 scalar_t__ VMCI_TRANSPORT_PACKET_TYPE_REQUEST2 ;
 int VSOCK_PROTO_INVALID ;
 struct sock* __vsock_create (int ,int *,struct sock*,int ,int ,int ) ;
 int fls (int) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int schedule_delayed_work (int *,int ) ;
 int sock_hold (struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;
 TYPE_7__* vmci_trans (struct vsock_sock*) ;
 int vmci_transport_error_to_vsock_error (int) ;
 struct sock* vmci_transport_get_pending (struct sock*,struct vmci_transport_packet*) ;
 int vmci_transport_new_proto_supported_versions () ;
 scalar_t__ vmci_transport_old_proto_override (int*) ;
 scalar_t__ vmci_transport_proto_to_notify_struct (struct sock*,int*,int) ;
 int vmci_transport_recv_connecting_server (struct sock*,struct sock*,struct vmci_transport_packet*) ;
 int vmci_transport_release_pending (struct sock*) ;
 int vmci_transport_reply_reset (struct vmci_transport_packet*) ;
 int vmci_transport_send_negotiate (struct sock*,void*) ;
 int vmci_transport_send_negotiate2 (struct sock*,void*,int) ;
 int vmci_transport_send_reset (struct sock*,struct vmci_transport_packet*) ;
 int vsock_add_pending (struct sock*,struct sock*) ;
 int vsock_addr_init (TYPE_6__*,int ,int ) ;
 int vsock_remove_pending (struct sock*,struct sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static int vmci_transport_recv_listen(struct sock *sk,
          struct vmci_transport_packet *pkt)
{
 struct sock *pending;
 struct vsock_sock *vpending;
 int err;
 u64 qp_size;
 bool old_request = 0;
 bool old_pkt_proto = 0;

 err = 0;
 pending = vmci_transport_get_pending(sk, pkt);
 if (pending) {
  lock_sock(pending);


  vsock_sk(pending)->local_addr.svm_cid = pkt->dg.dst.context;

  switch (pending->sk_state) {
  case 128:
   err = vmci_transport_recv_connecting_server(sk,
            pending,
            pkt);
   break;
  default:
   vmci_transport_send_reset(pending, pkt);
   err = -EINVAL;
  }

  if (err < 0)
   vsock_remove_pending(sk, pending);

  release_sock(pending);
  vmci_transport_release_pending(pending);

  return err;
 }





 if (!(pkt->type == VMCI_TRANSPORT_PACKET_TYPE_REQUEST ||
       pkt->type == VMCI_TRANSPORT_PACKET_TYPE_REQUEST2)) {
  vmci_transport_reply_reset(pkt);
  return -EINVAL;
 }

 if (pkt->u.size == 0) {
  vmci_transport_reply_reset(pkt);
  return -EINVAL;
 }





 if (sk->sk_ack_backlog >= sk->sk_max_ack_backlog) {
  vmci_transport_reply_reset(pkt);
  return -ECONNREFUSED;
 }

 pending = __vsock_create(sock_net(sk), ((void*)0), sk, GFP_KERNEL,
     sk->sk_type, 0);
 if (!pending) {
  vmci_transport_send_reset(sk, pkt);
  return -ENOMEM;
 }

 vpending = vsock_sk(pending);

 vsock_addr_init(&vpending->local_addr, pkt->dg.dst.context,
   pkt->dst_port);
 vsock_addr_init(&vpending->remote_addr, pkt->dg.src.context,
   pkt->src_port);




 if (pkt->u.size >= vmci_trans(vpending)->queue_pair_min_size &&
     pkt->u.size <= vmci_trans(vpending)->queue_pair_max_size) {
  qp_size = pkt->u.size;
 } else {
  qp_size = vmci_trans(vpending)->queue_pair_size;
 }




 if (vmci_transport_old_proto_override(&old_pkt_proto)) {
  old_request = old_pkt_proto;
 } else {
  if (pkt->type == VMCI_TRANSPORT_PACKET_TYPE_REQUEST)
   old_request = 1;
  else if (pkt->type == VMCI_TRANSPORT_PACKET_TYPE_REQUEST2)
   old_request = 0;

 }

 if (old_request) {

  u16 version = VSOCK_PROTO_INVALID;
  if (vmci_transport_proto_to_notify_struct(
   pending, &version, 1))
   err = vmci_transport_send_negotiate(pending, qp_size);
  else
   err = -EINVAL;

 } else {

  int proto_int = pkt->proto;
  int pos;
  u16 active_proto_version = 0;





  proto_int &= vmci_transport_new_proto_supported_versions();




  pos = fls(proto_int);
  if (pos) {
   active_proto_version = (1 << (pos - 1));
   if (vmci_transport_proto_to_notify_struct(
    pending, &active_proto_version, 0))
    err = vmci_transport_send_negotiate2(pending,
       qp_size,
       active_proto_version);
   else
    err = -EINVAL;

  } else {
   err = -EINVAL;
  }
 }

 if (err < 0) {
  vmci_transport_send_reset(sk, pkt);
  sock_put(pending);
  err = vmci_transport_error_to_vsock_error(err);
  goto out;
 }

 vsock_add_pending(sk, pending);
 sk->sk_ack_backlog++;

 pending->sk_state = 128;
 vmci_trans(vpending)->produce_size =
  vmci_trans(vpending)->consume_size = qp_size;
 vmci_trans(vpending)->queue_pair_size = qp_size;

 vmci_trans(vpending)->notify_ops->process_request(pending);
 vpending->listener = sk;
 sock_hold(sk);
 sock_hold(pending);
 schedule_delayed_work(&vpending->pending_work, HZ);

out:
 return err;
}
