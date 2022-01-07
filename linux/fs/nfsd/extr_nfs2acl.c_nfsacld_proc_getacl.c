
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fh_dentry; } ;
typedef TYPE_1__ svc_fh ;
struct svc_rqst {struct nfsd3_getaclres* rq_resp; struct nfsd3_getaclargs* rq_argp; } ;
struct posix_acl {int dummy; } ;
struct nfsd3_getaclres {int mask; struct posix_acl* acl_default; struct posix_acl* acl_access; int stat; int fh; } ;
struct nfsd3_getaclargs {int mask; int fh; } ;
struct inode {int i_mode; } ;
typedef scalar_t__ __be32 ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int NFSD_MAY_NOP ;
 int NFS_ACL ;
 int NFS_ACLCNT ;
 int NFS_ACL_MASK ;
 int NFS_DFACL ;
 int NFS_DFACLCNT ;
 int PTR_ERR (struct posix_acl*) ;
 int RETURN_STATUS (scalar_t__) ;
 int SVCFH_fmt (int *) ;
 struct inode* d_inode (int ) ;
 int dprintk (char*,int ) ;
 TYPE_1__* fh_copy (int *,int *) ;
 scalar_t__ fh_getattr (TYPE_1__*,int *) ;
 scalar_t__ fh_verify (struct svc_rqst*,int *,int ,int ) ;
 struct posix_acl* get_acl (struct inode*,int ) ;
 scalar_t__ nfserr_inval ;
 scalar_t__ nfserrno (int ) ;
 struct posix_acl* posix_acl_from_mode (int ,int ) ;
 int posix_acl_release (struct posix_acl*) ;

__attribute__((used)) static __be32 nfsacld_proc_getacl(struct svc_rqst *rqstp)
{
 struct nfsd3_getaclargs *argp = rqstp->rq_argp;
 struct nfsd3_getaclres *resp = rqstp->rq_resp;
 struct posix_acl *acl;
 struct inode *inode;
 svc_fh *fh;
 __be32 nfserr = 0;

 dprintk("nfsd: GETACL(2acl)   %s\n", SVCFH_fmt(&argp->fh));

 fh = fh_copy(&resp->fh, &argp->fh);
 nfserr = fh_verify(rqstp, &resp->fh, 0, NFSD_MAY_NOP);
 if (nfserr)
  RETURN_STATUS(nfserr);

 inode = d_inode(fh->fh_dentry);

 if (argp->mask & ~NFS_ACL_MASK)
  RETURN_STATUS(nfserr_inval);
 resp->mask = argp->mask;

 nfserr = fh_getattr(fh, &resp->stat);
 if (nfserr)
  RETURN_STATUS(nfserr);

 if (resp->mask & (NFS_ACL|NFS_ACLCNT)) {
  acl = get_acl(inode, ACL_TYPE_ACCESS);
  if (acl == ((void*)0)) {

   acl = posix_acl_from_mode(inode->i_mode, GFP_KERNEL);
  }
  if (IS_ERR(acl)) {
   nfserr = nfserrno(PTR_ERR(acl));
   goto fail;
  }
  resp->acl_access = acl;
 }
 if (resp->mask & (NFS_DFACL|NFS_DFACLCNT)) {


  acl = get_acl(inode, ACL_TYPE_DEFAULT);
  if (IS_ERR(acl)) {
   nfserr = nfserrno(PTR_ERR(acl));
   goto fail;
  }
  resp->acl_default = acl;
 }


 RETURN_STATUS(0);

fail:
 posix_acl_release(resp->acl_access);
 posix_acl_release(resp->acl_default);
 RETURN_STATUS(nfserr);
}
