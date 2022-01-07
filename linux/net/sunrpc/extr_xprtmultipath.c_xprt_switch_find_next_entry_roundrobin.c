
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct rpc_xprt_switch {int xps_nactive; int xps_queuelen; struct list_head xps_xprt_list; } ;
struct rpc_xprt {int queuelen; } ;


 unsigned int READ_ONCE (int ) ;
 struct rpc_xprt* __xprt_switch_find_next_entry_roundrobin (struct list_head*,struct rpc_xprt const*) ;
 unsigned long atomic_long_read (int *) ;

__attribute__((used)) static
struct rpc_xprt *xprt_switch_find_next_entry_roundrobin(struct rpc_xprt_switch *xps,
  const struct rpc_xprt *cur)
{
 struct list_head *head = &xps->xps_xprt_list;
 struct rpc_xprt *xprt;
 unsigned int nactive;

 for (;;) {
  unsigned long xprt_queuelen, xps_queuelen;

  xprt = __xprt_switch_find_next_entry_roundrobin(head, cur);
  if (!xprt)
   break;
  xprt_queuelen = atomic_long_read(&xprt->queuelen);
  xps_queuelen = atomic_long_read(&xps->xps_queuelen);
  nactive = READ_ONCE(xps->xps_nactive);

  if (xprt_queuelen * nactive <= xps_queuelen)
   break;
  cur = xprt;
 }
 return xprt;
}
