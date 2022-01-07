
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct devlink {int _net; } ;


 int write_pnet (int *,struct net*) ;

__attribute__((used)) static void devlink_net_set(struct devlink *devlink, struct net *net)
{
 write_pnet(&devlink->_net, net);
}
