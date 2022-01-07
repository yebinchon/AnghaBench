
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct devlink {int _net; } ;


 struct net* read_pnet (int *) ;

__attribute__((used)) static struct net *devlink_net(const struct devlink *devlink)
{
 return read_pnet(&devlink->_net);
}
