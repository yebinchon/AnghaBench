
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


struct TYPE_12__ {int svm_cid; } ;
struct vsock_sock {TYPE_5__ local_addr; } ;
struct vmci_transport_recv_pkt_info {int work; int pkt; struct sock* sk; } ;
struct TYPE_10__ {int context; } ;
struct TYPE_9__ {int context; } ;
struct TYPE_11__ {TYPE_3__ src; TYPE_2__ dst; } ;
struct vmci_transport_packet {scalar_t__ type; TYPE_4__ dg; int dst_port; int src_port; } ;
struct TYPE_8__ {scalar_t__ resource; int context; } ;
struct vmci_datagram {TYPE_1__ src; } ;
struct sockaddr_vm {int svm_cid; } ;
struct sock {scalar_t__ sk_state; } ;
struct TYPE_14__ {TYPE_6__* notify_ops; } ;
struct TYPE_13__ {int (* handle_notify_pkt ) (struct sock*,struct vmci_transport_packet*,int,struct sockaddr_vm*,struct sockaddr_vm*,int*) ;} ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ TCP_ESTABLISHED ;
 int VMCI_DG_SIZE (struct vmci_datagram*) ;
 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_ERROR_NOT_FOUND ;
 int VMCI_ERROR_NO_ACCESS ;
 int VMCI_ERROR_NO_MEM ;
 int VMCI_SUCCESS ;
 scalar_t__ VMCI_TRANSPORT_PACKET_TYPE_MAX ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct vmci_transport_recv_pkt_info* kmalloc (int,int ) ;
 int memcpy (int *,struct vmci_transport_packet*,int) ;
 int pr_err (char*) ;
 int schedule_work (int *) ;
 int sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*,struct vmci_transport_packet*,int,struct sockaddr_vm*,struct sockaddr_vm*,int*) ;
 TYPE_7__* vmci_trans (struct vsock_sock*) ;
 int vmci_transport_allow_dgram (struct vsock_sock*,int ) ;
 scalar_t__ vmci_transport_peer_rid (int ) ;
 int vmci_transport_recv_pkt_work ;
 int vmci_transport_send_invalid_bh (struct sockaddr_vm*,struct sockaddr_vm*) ;
 scalar_t__ vmci_transport_send_reset_bh (struct sockaddr_vm*,struct sockaddr_vm*,struct vmci_transport_packet*) ;
 int vmci_transport_stream_allow (int ,int) ;
 int vsock_addr_init (struct sockaddr_vm*,int ,int ) ;
 struct sock* vsock_find_bound_socket (struct sockaddr_vm*) ;
 struct sock* vsock_find_connected_socket (struct sockaddr_vm*,struct sockaddr_vm*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static int vmci_transport_recv_stream_cb(void *data, struct vmci_datagram *dg)
{
 struct sock *sk;
 struct sockaddr_vm dst;
 struct sockaddr_vm src;
 struct vmci_transport_packet *pkt;
 struct vsock_sock *vsk;
 bool bh_process_pkt;
 int err;

 sk = ((void*)0);
 err = VMCI_SUCCESS;
 bh_process_pkt = 0;





 if (!vmci_transport_stream_allow(dg->src.context, -1)
     || vmci_transport_peer_rid(dg->src.context) != dg->src.resource)
  return VMCI_ERROR_NO_ACCESS;

 if (VMCI_DG_SIZE(dg) < sizeof(*pkt))

  return VMCI_ERROR_INVALID_ARGS;

 pkt = (struct vmci_transport_packet *)dg;





 vsock_addr_init(&src, pkt->dg.src.context, pkt->src_port);
 vsock_addr_init(&dst, pkt->dg.dst.context, pkt->dst_port);

 sk = vsock_find_connected_socket(&src, &dst);
 if (!sk) {
  sk = vsock_find_bound_socket(&dst);
  if (!sk) {
   if (vmci_transport_send_reset_bh(&dst, &src, pkt) < 0)
    pr_err("unable to send reset\n");

   err = VMCI_ERROR_NOT_FOUND;
   goto out;
  }
 }





 if (pkt->type >= VMCI_TRANSPORT_PACKET_TYPE_MAX) {
  vmci_transport_send_invalid_bh(&dst, &src);
  err = VMCI_ERROR_INVALID_ARGS;
  goto out;
 }
 vsk = vsock_sk(sk);
 if (!vmci_transport_allow_dgram(vsk, pkt->dg.src.context)) {
  err = VMCI_ERROR_NO_ACCESS;
  goto out;
 }






 bh_lock_sock(sk);

 if (!sock_owned_by_user(sk)) {

  vsk->local_addr.svm_cid = dst.svm_cid;

  if (sk->sk_state == TCP_ESTABLISHED)
   vmci_trans(vsk)->notify_ops->handle_notify_pkt(
     sk, pkt, 1, &dst, &src,
     &bh_process_pkt);
 }

 bh_unlock_sock(sk);

 if (!bh_process_pkt) {
  struct vmci_transport_recv_pkt_info *recv_pkt_info;

  recv_pkt_info = kmalloc(sizeof(*recv_pkt_info), GFP_ATOMIC);
  if (!recv_pkt_info) {
   if (vmci_transport_send_reset_bh(&dst, &src, pkt) < 0)
    pr_err("unable to send reset\n");

   err = VMCI_ERROR_NO_MEM;
   goto out;
  }

  recv_pkt_info->sk = sk;
  memcpy(&recv_pkt_info->pkt, pkt, sizeof(recv_pkt_info->pkt));
  INIT_WORK(&recv_pkt_info->work, vmci_transport_recv_pkt_work);

  schedule_work(&recv_pkt_info->work);





  sk = ((void*)0);
 }

out:
 if (sk)
  sock_put(sk);

 return err;
}
