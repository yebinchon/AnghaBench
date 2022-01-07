
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_sock {struct tipc_group* group; int sk; } ;
struct tipc_name_seq {int dummy; } ;
struct tipc_group {int dummy; } ;
struct net {int dummy; } ;


 int EINVAL ;
 struct net* sock_net (int *) ;
 int tipc_group_delete (struct net*,struct tipc_group*) ;
 int tipc_group_self (struct tipc_group*,struct tipc_name_seq*,int*) ;
 int tipc_sk_withdraw (struct tipc_sock*,int,struct tipc_name_seq*) ;

__attribute__((used)) static int tipc_sk_leave(struct tipc_sock *tsk)
{
 struct net *net = sock_net(&tsk->sk);
 struct tipc_group *grp = tsk->group;
 struct tipc_name_seq seq;
 int scope;

 if (!grp)
  return -EINVAL;
 tipc_group_self(grp, &seq, &scope);
 tipc_group_delete(net, grp);
 tsk->group = ((void*)0);
 tipc_sk_withdraw(tsk, scope, &seq);
 return 0;
}
