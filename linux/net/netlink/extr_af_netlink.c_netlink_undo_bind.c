
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct netlink_sock {int (* netlink_unbind ) (int ,int) ;} ;


 struct netlink_sock* nlk_sk (struct sock*) ;
 int sock_net (struct sock*) ;
 int stub1 (int ,int) ;
 scalar_t__ test_bit (int,unsigned long*) ;

__attribute__((used)) static void netlink_undo_bind(int group, long unsigned int groups,
         struct sock *sk)
{
 struct netlink_sock *nlk = nlk_sk(sk);
 int undo;

 if (!nlk->netlink_unbind)
  return;

 for (undo = 0; undo < group; undo++)
  if (test_bit(undo, &groups))
   nlk->netlink_unbind(sock_net(sk), undo + 1);
}
