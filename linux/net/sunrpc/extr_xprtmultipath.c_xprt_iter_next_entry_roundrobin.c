
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt_iter {int dummy; } ;
struct rpc_xprt {int dummy; } ;


 struct rpc_xprt* xprt_iter_next_entry_multiple (struct rpc_xprt_iter*,int ) ;
 int xprt_switch_find_next_entry_roundrobin ;

__attribute__((used)) static
struct rpc_xprt *xprt_iter_next_entry_roundrobin(struct rpc_xprt_iter *xpi)
{
 return xprt_iter_next_entry_multiple(xpi,
   xprt_switch_find_next_entry_roundrobin);
}
