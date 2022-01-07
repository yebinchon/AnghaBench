
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_cgroup_info_v1 {int invert_path; scalar_t__ classid; int invert_classid; struct cgroup* priv; } ;
struct xt_action_param {struct xt_cgroup_info_v1* matchinfo; } ;
struct sock_cgroup_data {int dummy; } ;
struct sock {struct sock_cgroup_data sk_cgrp_data; } ;
struct sk_buff {struct sock* sk; } ;
struct cgroup {int dummy; } ;


 int cgroup_is_descendant (int ,struct cgroup*) ;
 int net_eq (int ,int ) ;
 int sk_fullsock (struct sock*) ;
 scalar_t__ sock_cgroup_classid (struct sock_cgroup_data*) ;
 int sock_cgroup_ptr (struct sock_cgroup_data*) ;
 int sock_net (struct sock*) ;
 int xt_net (struct xt_action_param*) ;

__attribute__((used)) static bool cgroup_mt_v1(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_cgroup_info_v1 *info = par->matchinfo;
 struct sock_cgroup_data *skcd = &skb->sk->sk_cgrp_data;
 struct cgroup *ancestor = info->priv;
 struct sock *sk = skb->sk;

 if (!sk || !sk_fullsock(sk) || !net_eq(xt_net(par), sock_net(sk)))
  return 0;

 if (ancestor)
  return cgroup_is_descendant(sock_cgroup_ptr(skcd), ancestor) ^
   info->invert_path;
 else
  return (info->classid == sock_cgroup_classid(skcd)) ^
   info->invert_classid;
}
