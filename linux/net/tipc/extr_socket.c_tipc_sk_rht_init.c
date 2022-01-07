
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_net {int sk_rht; } ;
struct net {int dummy; } ;


 struct tipc_net* net_generic (struct net*,int ) ;
 int rhashtable_init (int *,int *) ;
 int tipc_net_id ;
 int tsk_rht_params ;

int tipc_sk_rht_init(struct net *net)
{
 struct tipc_net *tn = net_generic(net, tipc_net_id);

 return rhashtable_init(&tn->sk_rht, &tsk_rht_params);
}
