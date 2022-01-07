
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt_switch {int xps_xprt_list; } ;
struct rpc_xprt {int dummy; } ;


 struct rpc_xprt* xprt_switch_find_next_entry (int *,struct rpc_xprt const*) ;

__attribute__((used)) static
struct rpc_xprt *xprt_switch_find_next_entry_all(struct rpc_xprt_switch *xps,
  const struct rpc_xprt *cur)
{
 return xprt_switch_find_next_entry(&xps->xps_xprt_list, cur);
}
