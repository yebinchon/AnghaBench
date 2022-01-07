
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct nfsd4_open {int op_share_access; int op_share_deny; scalar_t__ op_truncate; } ;
typedef int __be32 ;


 int NFS4_SHARE_ACCESS_READ ;
 int NFS4_SHARE_ACCESS_WRITE ;
 int NFS4_SHARE_DENY_READ ;
 int NFSD_MAY_READ ;
 int NFSD_MAY_READ_IF_EXEC ;
 int NFSD_MAY_TRUNC ;
 int NFSD_MAY_WRITE ;
 int S_IFREG ;
 int fh_verify (struct svc_rqst*,struct svc_fh*,int ,int) ;
 int nfserr_inval ;

__attribute__((used)) static __be32
do_open_permission(struct svc_rqst *rqstp, struct svc_fh *current_fh, struct nfsd4_open *open, int accmode)
{
 __be32 status;

 if (open->op_truncate &&
  !(open->op_share_access & NFS4_SHARE_ACCESS_WRITE))
  return nfserr_inval;

 accmode |= NFSD_MAY_READ_IF_EXEC;

 if (open->op_share_access & NFS4_SHARE_ACCESS_READ)
  accmode |= NFSD_MAY_READ;
 if (open->op_share_access & NFS4_SHARE_ACCESS_WRITE)
  accmode |= (NFSD_MAY_WRITE | NFSD_MAY_TRUNC);
 if (open->op_share_deny & NFS4_SHARE_DENY_READ)
  accmode |= NFSD_MAY_WRITE;

 status = fh_verify(rqstp, current_fh, S_IFREG, accmode);

 return status;
}
