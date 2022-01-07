
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recent_net {int dummy; } ;
struct net {int dummy; } ;


 struct recent_net* net_generic (struct net*,int ) ;
 int recent_net_id ;

__attribute__((used)) static inline struct recent_net *recent_pernet(struct net *net)
{
 return net_generic(net, recent_net_id);
}
