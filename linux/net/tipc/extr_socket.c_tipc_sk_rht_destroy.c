
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_net {int sk_rht; } ;
struct net {int dummy; } ;


 struct tipc_net* net_generic (struct net*,int ) ;
 int rhashtable_destroy (int *) ;
 int synchronize_net () ;
 int tipc_net_id ;

void tipc_sk_rht_destroy(struct net *net)
{
 struct tipc_net *tn = net_generic(net, tipc_net_id);


 synchronize_net();

 rhashtable_destroy(&tn->sk_rht);
}
