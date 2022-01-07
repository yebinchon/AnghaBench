
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct tipc_dest {int list; void* port; void* node; } ;
struct list_head {int dummy; } ;


 int GFP_ATOMIC ;
 struct tipc_dest* kmalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;
 scalar_t__ tipc_dest_find (struct list_head*,void*,void*) ;
 scalar_t__ unlikely (int) ;

bool tipc_dest_push(struct list_head *l, u32 node, u32 port)
{
 struct tipc_dest *dst;

 if (tipc_dest_find(l, node, port))
  return 0;

 dst = kmalloc(sizeof(*dst), GFP_ATOMIC);
 if (unlikely(!dst))
  return 0;
 dst->node = node;
 dst->port = port;
 list_add(&dst->list, l);
 return 1;
}
