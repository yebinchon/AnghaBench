
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bad_xids; } ;
struct rpc_xprt {TYPE_1__ stat; } ;
struct rpc_rqst {int rq_xtime; int rq_rtt; } ;
typedef int __be32 ;


 int ENOENT ;
 int dprintk (char*,int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ntohl (int ) ;
 int trace_xprt_lookup_rqst (struct rpc_xprt*,int ,int ) ;
 struct rpc_rqst* xprt_request_rb_find (struct rpc_xprt*,int ) ;

struct rpc_rqst *xprt_lookup_rqst(struct rpc_xprt *xprt, __be32 xid)
{
 struct rpc_rqst *entry;

 entry = xprt_request_rb_find(xprt, xid);
 if (entry != ((void*)0)) {
  trace_xprt_lookup_rqst(xprt, xid, 0);
  entry->rq_rtt = ktime_sub(ktime_get(), entry->rq_xtime);
  return entry;
 }

 dprintk("RPC:       xprt_lookup_rqst did not find xid %08x\n",
   ntohl(xid));
 trace_xprt_lookup_rqst(xprt, xid, -ENOENT);
 xprt->stat.bad_xids++;
 return ((void*)0);
}
