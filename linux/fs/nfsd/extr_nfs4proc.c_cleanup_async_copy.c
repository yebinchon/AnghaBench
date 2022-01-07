
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_copy {TYPE_1__* cp_clp; int copies; int nf_src; int nf_dst; } ;
struct TYPE_2__ {int async_lock; } ;


 int list_del (int *) ;
 int nfs4_free_cp_state (struct nfsd4_copy*) ;
 int nfs4_put_copy (struct nfsd4_copy*) ;
 int nfsd_file_put (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cleanup_async_copy(struct nfsd4_copy *copy)
{
 nfs4_free_cp_state(copy);
 nfsd_file_put(copy->nf_dst);
 nfsd_file_put(copy->nf_src);
 spin_lock(&copy->cp_clp->async_lock);
 list_del(&copy->copies);
 spin_unlock(&copy->cp_clp->async_lock);
 nfs4_put_copy(copy);
}
