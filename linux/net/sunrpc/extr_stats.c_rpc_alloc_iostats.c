
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_iostats {int om_lock; } ;
struct rpc_clnt {int cl_maxproc; } ;


 int GFP_KERNEL ;
 struct rpc_iostats* kcalloc (int,int,int ) ;
 int spin_lock_init (int *) ;

struct rpc_iostats *rpc_alloc_iostats(struct rpc_clnt *clnt)
{
 struct rpc_iostats *stats;
 int i;

 stats = kcalloc(clnt->cl_maxproc, sizeof(*stats), GFP_KERNEL);
 if (stats) {
  for (i = 0; i < clnt->cl_maxproc; i++)
   spin_lock_init(&stats[i].om_lock);
 }
 return stats;
}
