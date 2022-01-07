
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_dest {int list; } ;
struct list_head {int dummy; } ;


 int kfree (struct tipc_dest*) ;
 int list_del (int *) ;
 struct tipc_dest* tipc_dest_find (struct list_head*,int ,int ) ;

bool tipc_dest_del(struct list_head *l, u32 node, u32 port)
{
 struct tipc_dest *dst;

 dst = tipc_dest_find(l, node, port);
 if (!dst)
  return 0;
 list_del(&dst->list);
 kfree(dst);
 return 1;
}
