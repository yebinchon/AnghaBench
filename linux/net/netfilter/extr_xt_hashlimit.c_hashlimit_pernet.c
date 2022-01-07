
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct hashlimit_net {int dummy; } ;


 int hashlimit_net_id ;
 struct hashlimit_net* net_generic (struct net*,int ) ;

__attribute__((used)) static inline struct hashlimit_net *hashlimit_pernet(struct net *net)
{
 return net_generic(net, hashlimit_net_id);
}
