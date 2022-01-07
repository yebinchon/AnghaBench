
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_file {int nf_flags; int nf_ref; } ;


 int NFSD_FILE_HASHED ;
 int WARN_ON (int ) ;
 int atomic_dec_return (int *) ;
 int nfsd_file_free (struct nfsd_file*) ;
 int test_bit (int ,int *) ;
 int trace_nfsd_file_put (struct nfsd_file*) ;

__attribute__((used)) static int
nfsd_file_put_noref(struct nfsd_file *nf)
{
 int count;
 trace_nfsd_file_put(nf);

 count = atomic_dec_return(&nf->nf_ref);
 if (!count) {
  WARN_ON(test_bit(NFSD_FILE_HASHED, &nf->nf_flags));
  nfsd_file_free(nf);
 }
 return count;
}
