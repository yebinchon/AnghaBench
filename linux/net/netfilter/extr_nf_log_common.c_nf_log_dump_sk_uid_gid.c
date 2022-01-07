
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_callback_lock; TYPE_1__* sk_socket; } ;
struct nf_log_buf {int dummy; } ;
struct net {int dummy; } ;
struct cred {int fsgid; int fsuid; } ;
struct TYPE_4__ {struct cred* f_cred; } ;
struct TYPE_3__ {TYPE_2__* file; } ;


 int from_kgid_munged (int *,int ) ;
 int from_kuid_munged (int *,int ) ;
 int init_user_ns ;
 int net_eq (struct net*,int ) ;
 int nf_log_buf_add (struct nf_log_buf*,char*,int ,int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int sk_fullsock (struct sock*) ;
 int sock_net (struct sock*) ;

void nf_log_dump_sk_uid_gid(struct net *net, struct nf_log_buf *m,
       struct sock *sk)
{
 if (!sk || !sk_fullsock(sk) || !net_eq(net, sock_net(sk)))
  return;

 read_lock_bh(&sk->sk_callback_lock);
 if (sk->sk_socket && sk->sk_socket->file) {
  const struct cred *cred = sk->sk_socket->file->f_cred;
  nf_log_buf_add(m, "UID=%u GID=%u ",
   from_kuid_munged(&init_user_ns, cred->fsuid),
   from_kgid_munged(&init_user_ns, cred->fsgid));
 }
 read_unlock_bh(&sk->sk_callback_lock);
}
