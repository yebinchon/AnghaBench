
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct file {int dummy; } ;
typedef unsigned long ssize_t ;
typedef int loff_t ;
typedef int __be32 ;
struct TYPE_2__ {unsigned long io_read; } ;


 int fsnotify_access (struct file*) ;
 int nfsd_eof_on_read (struct file*,int ,unsigned long,unsigned long) ;
 TYPE_1__ nfsdstats ;
 int nfserrno (unsigned long) ;
 int trace_nfsd_read_err (struct svc_rqst*,struct svc_fh*,int ,unsigned long) ;
 int trace_nfsd_read_io_done (struct svc_rqst*,struct svc_fh*,int ,unsigned long) ;

__attribute__((used)) static __be32 nfsd_finish_read(struct svc_rqst *rqstp, struct svc_fh *fhp,
          struct file *file, loff_t offset,
          unsigned long *count, u32 *eof, ssize_t host_err)
{
 if (host_err >= 0) {
  nfsdstats.io_read += host_err;
  *eof = nfsd_eof_on_read(file, offset, host_err, *count);
  *count = host_err;
  fsnotify_access(file);
  trace_nfsd_read_io_done(rqstp, fhp, offset, *count);
  return 0;
 } else {
  trace_nfsd_read_err(rqstp, fhp, offset, host_err);
  return nfserrno(host_err);
 }
}
