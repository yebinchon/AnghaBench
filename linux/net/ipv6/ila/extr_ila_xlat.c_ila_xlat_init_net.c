
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_2__ {int rhash_table; } ;
struct ila_net {TYPE_1__ xlat; } ;


 int alloc_ila_locks (struct ila_net*) ;
 int ila_net_id ;
 struct ila_net* net_generic (struct net*,int ) ;
 int rhashtable_init (int *,int *) ;
 int rht_params ;

int ila_xlat_init_net(struct net *net)
{
 struct ila_net *ilan = net_generic(net, ila_net_id);
 int err;

 err = alloc_ila_locks(ilan);
 if (err)
  return err;

 rhashtable_init(&ilan->xlat.rhash_table, &rht_params);

 return 0;
}
