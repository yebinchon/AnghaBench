
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct kvec {int dummy; } ;
struct iov_iter {int dummy; } ;
struct file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
typedef int __be32 ;


 int READ ;
 int iov_iter_kvec (struct iov_iter*,int ,struct kvec*,int,unsigned long) ;
 int nfsd_finish_read (struct svc_rqst*,struct svc_fh*,struct file*,int ,unsigned long*,int *,int ) ;
 int trace_nfsd_read_vector (struct svc_rqst*,struct svc_fh*,int ,unsigned long) ;
 int vfs_iter_read (struct file*,struct iov_iter*,int *,int ) ;

__be32 nfsd_readv(struct svc_rqst *rqstp, struct svc_fh *fhp,
    struct file *file, loff_t offset,
    struct kvec *vec, int vlen, unsigned long *count,
    u32 *eof)
{
 struct iov_iter iter;
 loff_t ppos = offset;
 ssize_t host_err;

 trace_nfsd_read_vector(rqstp, fhp, offset, *count);
 iov_iter_kvec(&iter, READ, vec, vlen, *count);
 host_err = vfs_iter_read(file, &iter, &ppos, 0);
 return nfsd_finish_read(rqstp, fhp, file, offset, count, eof, host_err);
}
