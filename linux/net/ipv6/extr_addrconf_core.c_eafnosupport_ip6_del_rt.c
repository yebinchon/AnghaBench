
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct fib6_info {int dummy; } ;


 int EAFNOSUPPORT ;

__attribute__((used)) static int eafnosupport_ip6_del_rt(struct net *net, struct fib6_info *rt)
{
 return -EAFNOSUPPORT;
}
