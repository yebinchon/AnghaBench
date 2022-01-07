
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_file {int fi_lock; } ;
struct nfs4_clnt_odstate {int co_client; int co_perfile; int co_odcount; struct nfs4_file* co_file; } ;


 int kmem_cache_free (int ,struct nfs4_clnt_odstate*) ;
 int list_del (int *) ;
 int nfsd4_return_all_file_layouts (int ,struct nfs4_file*) ;
 int odstate_slab ;
 scalar_t__ refcount_dec_and_lock (int *,int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
put_clnt_odstate(struct nfs4_clnt_odstate *co)
{
 struct nfs4_file *fp;

 if (!co)
  return;

 fp = co->co_file;
 if (refcount_dec_and_lock(&co->co_odcount, &fp->fi_lock)) {
  list_del(&co->co_perfile);
  spin_unlock(&fp->fi_lock);

  nfsd4_return_all_file_layouts(co->co_client, fp);
  kmem_cache_free(odstate_slab, co);
 }
}
