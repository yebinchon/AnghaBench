
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_stateowner {TYPE_1__* so_ops; int so_count; struct nfs4_client* so_client; } ;
struct nfs4_client {int cl_lock; } ;
struct TYPE_2__ {int (* so_unhash ) (struct nfs4_stateowner*) ;} ;


 int atomic_dec_and_lock (int *,int *) ;
 int might_lock (int *) ;
 int nfs4_free_stateowner (struct nfs4_stateowner*) ;
 int spin_unlock (int *) ;
 int stub1 (struct nfs4_stateowner*) ;

__attribute__((used)) static void nfs4_put_stateowner(struct nfs4_stateowner *sop)
{
 struct nfs4_client *clp = sop->so_client;

 might_lock(&clp->cl_lock);

 if (!atomic_dec_and_lock(&sop->so_count, &clp->cl_lock))
  return;
 sop->so_ops->so_unhash(sop);
 spin_unlock(&clp->cl_lock);
 nfs4_free_stateowner(sop);
}
