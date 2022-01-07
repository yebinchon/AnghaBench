
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {scalar_t__ bc_alloc_count; scalar_t__ bc_alloc_max; } ;



__attribute__((used)) static inline int xprt_need_to_requeue(struct rpc_xprt *xprt)
{
 return xprt->bc_alloc_count < xprt->bc_alloc_max;
}
