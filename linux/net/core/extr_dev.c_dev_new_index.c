
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int ifindex; } ;


 int __dev_get_by_index (struct net*,int) ;

__attribute__((used)) static int dev_new_index(struct net *net)
{
 int ifindex = net->ifindex;

 for (;;) {
  if (++ifindex <= 0)
   ifindex = 1;
  if (!__dev_get_by_index(net, ifindex))
   return net->ifindex = ifindex;
 }
}
