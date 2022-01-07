
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct svc_rqst {scalar_t__ rq_respages; scalar_t__ rq_next_page; } ;
struct svc_fh {int dummy; } ;
struct TYPE_2__ {struct svc_rqst* data; } ;
struct splice_desc {unsigned long total_len; TYPE_1__ u; int pos; int len; } ;
struct file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
typedef int __be32 ;


 int nfsd_direct_splice_actor ;
 int nfsd_finish_read (struct svc_rqst*,struct svc_fh*,struct file*,int ,unsigned long*,int *,int ) ;
 int splice_direct_to_actor (struct file*,struct splice_desc*,int ) ;
 int trace_nfsd_read_splice (struct svc_rqst*,struct svc_fh*,int ,unsigned long) ;

__be32 nfsd_splice_read(struct svc_rqst *rqstp, struct svc_fh *fhp,
   struct file *file, loff_t offset, unsigned long *count,
   u32 *eof)
{
 struct splice_desc sd = {
  .len = 0,
  .total_len = *count,
  .pos = offset,
  .u.data = rqstp,
 };
 ssize_t host_err;

 trace_nfsd_read_splice(rqstp, fhp, offset, *count);
 rqstp->rq_next_page = rqstp->rq_respages + 1;
 host_err = splice_direct_to_actor(file, &sd, nfsd_direct_splice_actor);
 return nfsd_finish_read(rqstp, fhp, file, offset, count, eof, host_err);
}
