
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct nfsd4_open {int op_share_access; int op_truncate; } ;
struct iattr {int ia_size; int ia_valid; } ;
typedef int __be32 ;


 int ATTR_SIZE ;
 int NFS4_SHARE_ACCESS_WRITE ;
 int nfsd_setattr (struct svc_rqst*,struct svc_fh*,struct iattr*,int ,int ) ;
 int nfserr_inval ;

__attribute__((used)) static inline __be32
nfsd4_truncate(struct svc_rqst *rqstp, struct svc_fh *fh,
  struct nfsd4_open *open)
{
 struct iattr iattr = {
  .ia_valid = ATTR_SIZE,
  .ia_size = 0,
 };
 if (!open->op_truncate)
  return 0;
 if (!(open->op_share_access & NFS4_SHARE_ACCESS_WRITE))
  return nfserr_inval;
 return nfsd_setattr(rqstp, fh, &iattr, 0, (time_t)0);
}
