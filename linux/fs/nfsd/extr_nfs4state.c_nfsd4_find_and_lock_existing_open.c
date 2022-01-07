
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_open {int dummy; } ;
struct nfs4_ol_stateid {int st_stid; } ;
struct nfs4_file {int fi_lock; } ;


 int nfs4_put_stid (int *) ;
 scalar_t__ nfs_ok ;
 struct nfs4_ol_stateid* nfsd4_find_existing_open (struct nfs4_file*,struct nfsd4_open*) ;
 scalar_t__ nfsd4_lock_ol_stateid (struct nfs4_ol_stateid*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs4_ol_stateid *
nfsd4_find_and_lock_existing_open(struct nfs4_file *fp, struct nfsd4_open *open)
{
 struct nfs4_ol_stateid *stp;
 for (;;) {
  spin_lock(&fp->fi_lock);
  stp = nfsd4_find_existing_open(fp, open);
  spin_unlock(&fp->fi_lock);
  if (!stp || nfsd4_lock_ol_stateid(stp) == nfs_ok)
   break;
  nfs4_put_stid(&stp->st_stid);
 }
 return stp;
}
