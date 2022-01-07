
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct nfsd4_callback {int dummy; } ;



__attribute__((used)) static int nfsd4_cb_offload_done(struct nfsd4_callback *cb,
     struct rpc_task *task)
{
 return 1;
}
