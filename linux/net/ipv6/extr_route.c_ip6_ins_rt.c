
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_info {struct net* nl_net; } ;
struct net {int dummy; } ;
struct fib6_info {int dummy; } ;


 int __ip6_ins_rt (struct fib6_info*,struct nl_info*,int *) ;

int ip6_ins_rt(struct net *net, struct fib6_info *rt)
{
 struct nl_info info = { .nl_net = net, };

 return __ip6_ins_rt(rt, &info, ((void*)0));
}
