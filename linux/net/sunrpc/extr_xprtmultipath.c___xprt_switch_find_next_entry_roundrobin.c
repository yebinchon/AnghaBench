
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int dummy; } ;
struct list_head {int dummy; } ;


 struct rpc_xprt* xprt_switch_find_first_entry (struct list_head*) ;
 struct rpc_xprt* xprt_switch_find_next_entry (struct list_head*,struct rpc_xprt const*) ;

__attribute__((used)) static
struct rpc_xprt *__xprt_switch_find_next_entry_roundrobin(struct list_head *head,
  const struct rpc_xprt *cur)
{
 struct rpc_xprt *ret;

 ret = xprt_switch_find_next_entry(head, cur);
 if (ret != ((void*)0))
  return ret;
 return xprt_switch_find_first_entry(head);
}
