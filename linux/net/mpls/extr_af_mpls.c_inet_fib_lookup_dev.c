
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;


 int EAFNOSUPPORT ;
 struct net_device* ERR_PTR (int ) ;

__attribute__((used)) static struct net_device *inet_fib_lookup_dev(struct net *net,
           const void *addr)
{
 return ERR_PTR(-EAFNOSUPPORT);
}
