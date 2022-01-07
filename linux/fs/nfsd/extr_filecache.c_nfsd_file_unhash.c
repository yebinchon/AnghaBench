
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_file {int nf_flags; } ;


 int NFSD_FILE_HASHED ;
 int nfsd_file_do_unhash (struct nfsd_file*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static bool
nfsd_file_unhash(struct nfsd_file *nf)
{
 if (test_and_clear_bit(NFSD_FILE_HASHED, &nf->nf_flags)) {
  nfsd_file_do_unhash(nf);
  return 1;
 }
 return 0;
}
