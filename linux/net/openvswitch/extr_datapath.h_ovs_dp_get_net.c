
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct datapath {int net; } ;


 struct net* read_pnet (int *) ;

__attribute__((used)) static inline struct net *ovs_dp_get_net(const struct datapath *dp)
{
 return read_pnet(&dp->net);
}
