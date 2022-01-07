
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct nfsd_file {int nf_file; } ;
struct kvec {int dummy; } ;
typedef int loff_t ;
typedef scalar_t__ __be32 ;


 int NFSD_MAY_WRITE ;
 scalar_t__ nfsd_file_acquire (struct svc_rqst*,struct svc_fh*,int ,struct nfsd_file**) ;
 int nfsd_file_put (struct nfsd_file*) ;
 scalar_t__ nfsd_vfs_write (struct svc_rqst*,struct svc_fh*,int ,int ,struct kvec*,int,unsigned long*,int) ;
 int trace_nfsd_write_done (struct svc_rqst*,struct svc_fh*,int ,unsigned long) ;
 int trace_nfsd_write_start (struct svc_rqst*,struct svc_fh*,int ,unsigned long) ;

__be32
nfsd_write(struct svc_rqst *rqstp, struct svc_fh *fhp, loff_t offset,
    struct kvec *vec, int vlen, unsigned long *cnt, int stable)
{
 struct nfsd_file *nf;
 __be32 err;

 trace_nfsd_write_start(rqstp, fhp, offset, *cnt);

 err = nfsd_file_acquire(rqstp, fhp, NFSD_MAY_WRITE, &nf);
 if (err)
  goto out;

 err = nfsd_vfs_write(rqstp, fhp, nf->nf_file, offset, vec,
   vlen, cnt, stable);
 nfsd_file_put(nf);
out:
 trace_nfsd_write_done(rqstp, fhp, offset, *cnt);
 return err;
}
