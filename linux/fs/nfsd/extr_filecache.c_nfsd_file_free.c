
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_file {int nf_rcu; scalar_t__ nf_file; scalar_t__ nf_mark; } ;


 int call_rcu (int *,int ) ;
 int filp_close (scalar_t__,int *) ;
 int fput (scalar_t__) ;
 int get_file (scalar_t__) ;
 int nfsd_file_mark_put (scalar_t__) ;
 int nfsd_file_slab_free ;
 int trace_nfsd_file_put_final (struct nfsd_file*) ;

__attribute__((used)) static bool
nfsd_file_free(struct nfsd_file *nf)
{
 bool flush = 0;

 trace_nfsd_file_put_final(nf);
 if (nf->nf_mark)
  nfsd_file_mark_put(nf->nf_mark);
 if (nf->nf_file) {
  get_file(nf->nf_file);
  filp_close(nf->nf_file, ((void*)0));
  fput(nf->nf_file);
  flush = 1;
 }
 call_rcu(&nf->nf_rcu, nfsd_file_slab_free);
 return flush;
}
