
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct sock {int dummy; } ;
struct sk_buff {int sk; } ;


 int UNIX_DIAG_UID ;
 int from_kuid_munged (int ,int ) ;
 int nla_put (struct sk_buff*,int ,int,int *) ;
 int sk_user_ns (int ) ;
 int sock_i_uid (struct sock*) ;

__attribute__((used)) static int sk_diag_dump_uid(struct sock *sk, struct sk_buff *nlskb)
{
 uid_t uid = from_kuid_munged(sk_user_ns(nlskb->sk), sock_i_uid(sk));
 return nla_put(nlskb, UNIX_DIAG_UID, sizeof(uid_t), &uid);
}
