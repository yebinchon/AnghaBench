
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_rqst {struct nfsd3_attrstat* rq_resp; } ;
struct TYPE_4__ {int mtime; } ;
struct TYPE_3__ {int fh_dentry; } ;
struct nfsd3_attrstat {scalar_t__ status; TYPE_2__ stat; TYPE_1__ fh; } ;
typedef int __be32 ;


 int d_inode (int ) ;
 int * encode_fattr3 (struct svc_rqst*,int *,TYPE_1__*,TYPE_2__*) ;
 int lease_get_mtime (int ,int *) ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;

int
nfs3svc_encode_attrstat(struct svc_rqst *rqstp, __be32 *p)
{
 struct nfsd3_attrstat *resp = rqstp->rq_resp;

 if (resp->status == 0) {
  lease_get_mtime(d_inode(resp->fh.fh_dentry),
    &resp->stat.mtime);
  p = encode_fattr3(rqstp, p, &resp->fh, &resp->stat);
 }
 return xdr_ressize_check(rqstp, p);
}
