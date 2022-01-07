
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netlink_callback {long* args; TYPE_1__* skb; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int rhash_table; } ;
struct ila_net {TYPE_2__ xlat; } ;
struct ila_dump_iter {scalar_t__ skip; int rhiter; } ;
struct TYPE_3__ {int sk; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ila_net_id ;
 struct ila_dump_iter* kmalloc (int,int ) ;
 struct ila_net* net_generic (struct net*,int ) ;
 int rhashtable_walk_enter (int *,int *) ;
 struct net* sock_net (int ) ;

int ila_xlat_nl_dump_start(struct netlink_callback *cb)
{
 struct net *net = sock_net(cb->skb->sk);
 struct ila_net *ilan = net_generic(net, ila_net_id);
 struct ila_dump_iter *iter;

 iter = kmalloc(sizeof(*iter), GFP_KERNEL);
 if (!iter)
  return -ENOMEM;

 rhashtable_walk_enter(&ilan->xlat.rhash_table, &iter->rhiter);

 iter->skip = 0;
 cb->args[0] = (long)iter;

 return 0;
}
