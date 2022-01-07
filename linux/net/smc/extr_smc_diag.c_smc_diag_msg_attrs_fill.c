
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct sock {int sk_shutdown; } ;
struct smc_diag_msg {int diag_inode; int diag_uid; } ;
struct sk_buff {int dummy; } ;


 int SMC_DIAG_SHUTDOWN ;
 int from_kuid_munged (struct user_namespace*,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 int sock_i_ino (struct sock*) ;
 int sock_i_uid (struct sock*) ;

__attribute__((used)) static int smc_diag_msg_attrs_fill(struct sock *sk, struct sk_buff *skb,
       struct smc_diag_msg *r,
       struct user_namespace *user_ns)
{
 if (nla_put_u8(skb, SMC_DIAG_SHUTDOWN, sk->sk_shutdown))
  return 1;

 r->diag_uid = from_kuid_munged(user_ns, sock_i_uid(sk));
 r->diag_inode = sock_i_ino(sk);
 return 0;
}
