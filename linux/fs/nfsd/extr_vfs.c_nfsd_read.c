
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct svc_rqst {int rq_flags; } ;
struct svc_fh {int dummy; } ;
struct nfsd_file {struct file* nf_file; } ;
struct kvec {int dummy; } ;
struct file {TYPE_1__* f_op; } ;
typedef int loff_t ;
typedef scalar_t__ __be32 ;
struct TYPE_2__ {scalar_t__ splice_read; } ;


 int NFSD_MAY_READ ;
 int RQ_SPLICE_OK ;
 scalar_t__ nfsd_file_acquire (struct svc_rqst*,struct svc_fh*,int ,struct nfsd_file**) ;
 int nfsd_file_put (struct nfsd_file*) ;
 scalar_t__ nfsd_readv (struct svc_rqst*,struct svc_fh*,struct file*,int ,struct kvec*,int,unsigned long*,int *) ;
 scalar_t__ nfsd_splice_read (struct svc_rqst*,struct svc_fh*,struct file*,int ,unsigned long*,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_nfsd_read_done (struct svc_rqst*,struct svc_fh*,int ,unsigned long) ;
 int trace_nfsd_read_start (struct svc_rqst*,struct svc_fh*,int ,unsigned long) ;

__be32 nfsd_read(struct svc_rqst *rqstp, struct svc_fh *fhp,
 loff_t offset, struct kvec *vec, int vlen, unsigned long *count,
 u32 *eof)
{
 struct nfsd_file *nf;
 struct file *file;
 __be32 err;

 trace_nfsd_read_start(rqstp, fhp, offset, *count);
 err = nfsd_file_acquire(rqstp, fhp, NFSD_MAY_READ, &nf);
 if (err)
  return err;

 file = nf->nf_file;
 if (file->f_op->splice_read && test_bit(RQ_SPLICE_OK, &rqstp->rq_flags))
  err = nfsd_splice_read(rqstp, fhp, file, offset, count, eof);
 else
  err = nfsd_readv(rqstp, fhp, file, offset, vec, vlen, count, eof);

 nfsd_file_put(nf);

 trace_nfsd_read_done(rqstp, fhp, offset, *count);

 return err;
}
