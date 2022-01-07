
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct vsock_sock {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_5__ {TYPE_1__* notify_ops; } ;
struct TYPE_4__ {int (* socket_init ) (struct sock*) ;} ;


 int VSOCK_PROTO_INVALID ;

 int pr_err (char*) ;
 int stub1 (struct sock*) ;
 TYPE_3__* vmci_trans (struct vsock_sock*) ;
 TYPE_1__ vmci_transport_notify_pkt_ops ;
 TYPE_1__ vmci_transport_notify_pkt_q_state_ops ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static bool vmci_transport_proto_to_notify_struct(struct sock *sk,
        u16 *proto,
        bool old_pkt_proto)
{
 struct vsock_sock *vsk = vsock_sk(sk);

 if (old_pkt_proto) {
  if (*proto != VSOCK_PROTO_INVALID) {
   pr_err("Can't set both an old and new protocol\n");
   return 0;
  }
  vmci_trans(vsk)->notify_ops = &vmci_transport_notify_pkt_ops;
  goto exit;
 }

 switch (*proto) {
 case 128:
  vmci_trans(vsk)->notify_ops =
   &vmci_transport_notify_pkt_q_state_ops;
  break;
 default:
  pr_err("Unknown notify protocol version\n");
  return 0;
 }

exit:
 vmci_trans(vsk)->notify_ops->socket_init(sk);
 return 1;
}
