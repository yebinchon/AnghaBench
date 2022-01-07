
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_cgroup_info_v0 {scalar_t__ id; int invert; } ;
struct xt_action_param {struct xt_cgroup_info_v0* matchinfo; } ;
struct sock {int sk_cgrp_data; } ;
struct sk_buff {struct sock* sk; } ;


 int net_eq (int ,int ) ;
 int sk_fullsock (struct sock*) ;
 scalar_t__ sock_cgroup_classid (int *) ;
 int sock_net (struct sock*) ;
 int xt_net (struct xt_action_param*) ;

__attribute__((used)) static bool
cgroup_mt_v0(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_cgroup_info_v0 *info = par->matchinfo;
 struct sock *sk = skb->sk;

 if (!sk || !sk_fullsock(sk) || !net_eq(xt_net(par), sock_net(sk)))
  return 0;

 return (info->id == sock_cgroup_classid(&skb->sk->sk_cgrp_data)) ^
  info->invert;
}
