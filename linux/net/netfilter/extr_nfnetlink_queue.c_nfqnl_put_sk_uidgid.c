
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_callback_lock; TYPE_2__* sk_socket; } ;
struct sk_buff {int dummy; } ;
struct cred {int fsgid; int fsuid; } ;
struct TYPE_4__ {TYPE_1__* file; } ;
struct TYPE_3__ {struct cred* f_cred; } ;


 int NFQA_GID ;
 int NFQA_UID ;
 int from_kgid_munged (int *,int ) ;
 int from_kuid_munged (int *,int ) ;
 int htonl (int ) ;
 int init_user_ns ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int sk_fullsock (struct sock*) ;

__attribute__((used)) static int nfqnl_put_sk_uidgid(struct sk_buff *skb, struct sock *sk)
{
 const struct cred *cred;

 if (!sk_fullsock(sk))
  return 0;

 read_lock_bh(&sk->sk_callback_lock);
 if (sk->sk_socket && sk->sk_socket->file) {
  cred = sk->sk_socket->file->f_cred;
  if (nla_put_be32(skb, NFQA_UID,
      htonl(from_kuid_munged(&init_user_ns, cred->fsuid))))
   goto nla_put_failure;
  if (nla_put_be32(skb, NFQA_GID,
      htonl(from_kgid_munged(&init_user_ns, cred->fsgid))))
   goto nla_put_failure;
 }
 read_unlock_bh(&sk->sk_callback_lock);
 return 0;

nla_put_failure:
 read_unlock_bh(&sk->sk_callback_lock);
 return -1;
}
