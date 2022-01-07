
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int svm_port; int svm_cid; } ;
struct TYPE_3__ {int svm_port; int svm_cid; } ;
struct vsock_sock {TYPE_2__ remote_addr; TYPE_1__ local_addr; } ;
struct vsock_diag_msg {int vdiag_cookie; int vdiag_ino; int vdiag_dst_port; int vdiag_dst_cid; int vdiag_src_port; int vdiag_src_cid; int vdiag_shutdown; int vdiag_state; int vdiag_type; int vdiag_family; } ;
struct sock {int sk_shutdown; int sk_state; int sk_type; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;


 int AF_VSOCK ;
 int EMSGSIZE ;
 int SOCK_DIAG_BY_FAMILY ;
 struct vsock_diag_msg* nlmsg_data (struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 int sock_diag_save_cookie (struct sock*,int ) ;
 int sock_i_ino (struct sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static int sk_diag_fill(struct sock *sk, struct sk_buff *skb,
   u32 portid, u32 seq, u32 flags)
{
 struct vsock_sock *vsk = vsock_sk(sk);
 struct vsock_diag_msg *rep;
 struct nlmsghdr *nlh;

 nlh = nlmsg_put(skb, portid, seq, SOCK_DIAG_BY_FAMILY, sizeof(*rep),
   flags);
 if (!nlh)
  return -EMSGSIZE;

 rep = nlmsg_data(nlh);
 rep->vdiag_family = AF_VSOCK;






 rep->vdiag_type = sk->sk_type;
 rep->vdiag_state = sk->sk_state;
 rep->vdiag_shutdown = sk->sk_shutdown;
 rep->vdiag_src_cid = vsk->local_addr.svm_cid;
 rep->vdiag_src_port = vsk->local_addr.svm_port;
 rep->vdiag_dst_cid = vsk->remote_addr.svm_cid;
 rep->vdiag_dst_port = vsk->remote_addr.svm_port;
 rep->vdiag_ino = sock_i_ino(sk);

 sock_diag_save_cookie(sk, rep->vdiag_cookie);

 return 0;
}
