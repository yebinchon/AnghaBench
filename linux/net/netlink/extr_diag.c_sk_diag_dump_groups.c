
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct netlink_sock {int * groups; int ngroups; } ;


 int NETLINK_DIAG_GROUPS ;
 int NLGRPSZ (int ) ;
 int nla_put (struct sk_buff*,int ,int ,int *) ;
 struct netlink_sock* nlk_sk (struct sock*) ;

__attribute__((used)) static int sk_diag_dump_groups(struct sock *sk, struct sk_buff *nlskb)
{
 struct netlink_sock *nlk = nlk_sk(sk);

 if (nlk->groups == ((void*)0))
  return 0;

 return nla_put(nlskb, NETLINK_DIAG_GROUPS, NLGRPSZ(nlk->ngroups),
         nlk->groups);
}
