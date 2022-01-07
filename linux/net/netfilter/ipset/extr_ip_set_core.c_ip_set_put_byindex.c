
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ip_set_net {int dummy; } ;
typedef int ip_set_id_t ;


 int __ip_set_put_byindex (struct ip_set_net*,int ) ;
 struct ip_set_net* ip_set_pernet (struct net*) ;

void
ip_set_put_byindex(struct net *net, ip_set_id_t index)
{
 struct ip_set_net *inst = ip_set_pernet(net);

 __ip_set_put_byindex(inst, index);
}
