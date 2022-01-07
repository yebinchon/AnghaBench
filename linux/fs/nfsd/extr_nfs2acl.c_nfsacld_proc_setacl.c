
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int fh_dentry; } ;
typedef TYPE_1__ svc_fh ;
struct svc_rqst {struct nfsd_attrstat* rq_resp; struct nfsd3_setaclargs* rq_argp; } ;
struct nfsd_attrstat {int stat; int fh; } ;
struct nfsd3_setaclargs {int acl_default; int acl_access; int fh; } ;
struct inode {int dummy; } ;
typedef scalar_t__ __be32 ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int NFSD_MAY_SATTR ;
 int SVCFH_fmt (int *) ;
 struct inode* d_inode (int ) ;
 int dprintk (char*,int ) ;
 TYPE_1__* fh_copy (int *,int *) ;
 int fh_drop_write (TYPE_1__*) ;
 scalar_t__ fh_getattr (TYPE_1__*,int *) ;
 int fh_lock (TYPE_1__*) ;
 int fh_unlock (TYPE_1__*) ;
 scalar_t__ fh_verify (struct svc_rqst*,int *,int ,int ) ;
 int fh_want_write (TYPE_1__*) ;
 scalar_t__ nfserrno (int) ;
 int posix_acl_release (int ) ;
 int set_posix_acl (struct inode*,int ,int ) ;

__attribute__((used)) static __be32 nfsacld_proc_setacl(struct svc_rqst *rqstp)
{
 struct nfsd3_setaclargs *argp = rqstp->rq_argp;
 struct nfsd_attrstat *resp = rqstp->rq_resp;
 struct inode *inode;
 svc_fh *fh;
 __be32 nfserr = 0;
 int error;

 dprintk("nfsd: SETACL(2acl)   %s\n", SVCFH_fmt(&argp->fh));

 fh = fh_copy(&resp->fh, &argp->fh);
 nfserr = fh_verify(rqstp, &resp->fh, 0, NFSD_MAY_SATTR);
 if (nfserr)
  goto out;

 inode = d_inode(fh->fh_dentry);

 error = fh_want_write(fh);
 if (error)
  goto out_errno;

 fh_lock(fh);

 error = set_posix_acl(inode, ACL_TYPE_ACCESS, argp->acl_access);
 if (error)
  goto out_drop_lock;
 error = set_posix_acl(inode, ACL_TYPE_DEFAULT, argp->acl_default);
 if (error)
  goto out_drop_lock;

 fh_unlock(fh);

 fh_drop_write(fh);

 nfserr = fh_getattr(fh, &resp->stat);

out:


 posix_acl_release(argp->acl_access);
 posix_acl_release(argp->acl_default);
 return nfserr;
out_drop_lock:
 fh_unlock(fh);
 fh_drop_write(fh);
out_errno:
 nfserr = nfserrno(error);
 goto out;
}
