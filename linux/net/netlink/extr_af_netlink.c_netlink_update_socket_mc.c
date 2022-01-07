
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_sock {int subscriptions; int sk; int groups; } ;


 int __clear_bit (unsigned int,int ) ;
 int __set_bit (unsigned int,int ) ;
 int netlink_update_listeners (int *) ;
 int netlink_update_subscriptions (int *,int) ;
 int test_bit (unsigned int,int ) ;

__attribute__((used)) static void netlink_update_socket_mc(struct netlink_sock *nlk,
         unsigned int group,
         int is_new)
{
 int old, new = !!is_new, subscriptions;

 old = test_bit(group - 1, nlk->groups);
 subscriptions = nlk->subscriptions - old + new;
 if (new)
  __set_bit(group - 1, nlk->groups);
 else
  __clear_bit(group - 1, nlk->groups);
 netlink_update_subscriptions(&nlk->sk, subscriptions);
 netlink_update_listeners(&nlk->sk);
}
