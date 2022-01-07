
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_rqst {int rq_vers; int rq_flags; } ;
struct svc_fh {struct svc_export* fh_export; } ;
struct svc_export {int dummy; } ;
struct kvec {int dummy; } ;
struct iov_iter {int dummy; } ;
struct file {int dummy; } ;
typedef int rwf_t ;
typedef int loff_t ;
typedef int __be32 ;
struct TYPE_4__ {unsigned int flags; } ;
struct TYPE_3__ {unsigned long io_write; } ;


 int EX_ISSYNC (struct svc_export*) ;
 scalar_t__ EX_WGATHER (struct svc_export*) ;
 int NFS_UNSTABLE ;
 unsigned int PF_LESS_THROTTLE ;
 int RQ_LOCAL ;
 int RWF_SYNC ;
 int SVC_NET (struct svc_rqst*) ;
 int WRITE ;
 TYPE_2__* current ;
 int current_restore_flags (unsigned int,unsigned int) ;
 int fsnotify_modify (struct file*) ;
 int iov_iter_kvec (struct iov_iter*,int ,struct kvec*,int,unsigned long) ;
 int net_generic (int ,int ) ;
 int nfs_ok ;
 int nfsd_net_id ;
 int nfsd_reset_boot_verifier (int ) ;
 TYPE_1__ nfsdstats ;
 int nfserrno (int) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_nfsd_write_err (struct svc_rqst*,struct svc_fh*,int ,int) ;
 int trace_nfsd_write_io_done (struct svc_rqst*,struct svc_fh*,int ,unsigned long) ;
 int trace_nfsd_write_opened (struct svc_rqst*,struct svc_fh*,int ,unsigned long) ;
 int vfs_iter_write (struct file*,struct iov_iter*,int *,int ) ;
 int wait_for_concurrent_writes (struct file*) ;

__be32
nfsd_vfs_write(struct svc_rqst *rqstp, struct svc_fh *fhp, struct file *file,
    loff_t offset, struct kvec *vec, int vlen,
    unsigned long *cnt, int stable)
{
 struct svc_export *exp;
 struct iov_iter iter;
 __be32 nfserr;
 int host_err;
 int use_wgather;
 loff_t pos = offset;
 unsigned int pflags = current->flags;
 rwf_t flags = 0;

 trace_nfsd_write_opened(rqstp, fhp, offset, *cnt);

 if (test_bit(RQ_LOCAL, &rqstp->rq_flags))






  current->flags |= PF_LESS_THROTTLE;

 exp = fhp->fh_export;
 use_wgather = (rqstp->rq_vers == 2) && EX_WGATHER(exp);

 if (!EX_ISSYNC(exp))
  stable = NFS_UNSTABLE;

 if (stable && !use_wgather)
  flags |= RWF_SYNC;

 iov_iter_kvec(&iter, WRITE, vec, vlen, *cnt);
 host_err = vfs_iter_write(file, &iter, &pos, flags);
 if (host_err < 0)
  goto out_nfserr;
 nfsdstats.io_write += *cnt;
 fsnotify_modify(file);

 if (stable && use_wgather) {
  host_err = wait_for_concurrent_writes(file);
  if (host_err < 0)
   nfsd_reset_boot_verifier(net_generic(SVC_NET(rqstp),
       nfsd_net_id));
 }

out_nfserr:
 if (host_err >= 0) {
  trace_nfsd_write_io_done(rqstp, fhp, offset, *cnt);
  nfserr = nfs_ok;
 } else {
  trace_nfsd_write_err(rqstp, fhp, offset, host_err);
  nfserr = nfserrno(host_err);
 }
 if (test_bit(RQ_LOCAL, &rqstp->rq_flags))
  current_restore_flags(pflags, PF_LESS_THROTTLE);
 return nfserr;
}
