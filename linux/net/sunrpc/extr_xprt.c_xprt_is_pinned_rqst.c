
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int rq_pin; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static bool
xprt_is_pinned_rqst(struct rpc_rqst *req)
{
 return atomic_read(&req->rq_pin) != 0;
}
