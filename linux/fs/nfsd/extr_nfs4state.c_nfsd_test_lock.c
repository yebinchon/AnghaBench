
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct nfsd_file {int nf_file; } ;
struct file_lock {int dummy; } ;
typedef int __be32 ;


 int NFSD_MAY_READ ;
 int nfsd_file_acquire (struct svc_rqst*,struct svc_fh*,int ,struct nfsd_file**) ;
 int nfsd_file_put (struct nfsd_file*) ;
 int nfserrno (int ) ;
 int vfs_test_lock (int ,struct file_lock*) ;

__attribute__((used)) static __be32 nfsd_test_lock(struct svc_rqst *rqstp, struct svc_fh *fhp, struct file_lock *lock)
{
 struct nfsd_file *nf;
 __be32 err = nfsd_file_acquire(rqstp, fhp, NFSD_MAY_READ, &nf);
 if (!err) {
  err = nfserrno(vfs_test_lock(nf->nf_file, lock));
  nfsd_file_put(nf);
 }
 return err;
}
