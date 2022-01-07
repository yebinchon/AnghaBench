
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct nfsd_file {int dummy; } ;
struct nfsd4_open {int op_share_deny; int op_share_access; } ;
struct nfs4_ol_stateid {unsigned char st_access_bmap; unsigned char st_deny_bmap; } ;
struct nfs4_file {int fi_share_deny; int fi_lock; struct nfsd_file** fi_fds; } ;
typedef scalar_t__ __be32 ;


 int NFS4_SHARE_DENY_BOTH ;
 int bmap_to_share_mode (unsigned char) ;
 int nfs4_access_to_access (int ) ;
 int nfs4_access_to_omode (int ) ;
 scalar_t__ nfs4_file_check_deny (struct nfs4_file*,int) ;
 scalar_t__ nfs4_file_get_access (struct nfs4_file*,int ) ;
 int nfs4_file_put_access (struct nfs4_file*,int ) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfsd4_truncate (struct svc_rqst*,struct svc_fh*,struct nfsd4_open*) ;
 scalar_t__ nfsd_file_acquire (struct svc_rqst*,struct svc_fh*,int,struct nfsd_file**) ;
 int nfsd_file_put (struct nfsd_file*) ;
 int reset_union_bmap_deny (int ,struct nfs4_ol_stateid*) ;
 int set_access (int ,struct nfs4_ol_stateid*) ;
 int set_deny (int,struct nfs4_ol_stateid*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static __be32 nfs4_get_vfs_file(struct svc_rqst *rqstp, struct nfs4_file *fp,
  struct svc_fh *cur_fh, struct nfs4_ol_stateid *stp,
  struct nfsd4_open *open)
{
 struct nfsd_file *nf = ((void*)0);
 __be32 status;
 int oflag = nfs4_access_to_omode(open->op_share_access);
 int access = nfs4_access_to_access(open->op_share_access);
 unsigned char old_access_bmap, old_deny_bmap;

 spin_lock(&fp->fi_lock);





 status = nfs4_file_check_deny(fp, open->op_share_deny);
 if (status != nfs_ok) {
  spin_unlock(&fp->fi_lock);
  goto out;
 }


 status = nfs4_file_get_access(fp, open->op_share_access);
 if (status != nfs_ok) {
  spin_unlock(&fp->fi_lock);
  goto out;
 }


 old_access_bmap = stp->st_access_bmap;
 set_access(open->op_share_access, stp);


 old_deny_bmap = stp->st_deny_bmap;
 set_deny(open->op_share_deny, stp);
 fp->fi_share_deny |= (open->op_share_deny & NFS4_SHARE_DENY_BOTH);

 if (!fp->fi_fds[oflag]) {
  spin_unlock(&fp->fi_lock);
  status = nfsd_file_acquire(rqstp, cur_fh, access, &nf);
  if (status)
   goto out_put_access;
  spin_lock(&fp->fi_lock);
  if (!fp->fi_fds[oflag]) {
   fp->fi_fds[oflag] = nf;
   nf = ((void*)0);
  }
 }
 spin_unlock(&fp->fi_lock);
 if (nf)
  nfsd_file_put(nf);

 status = nfsd4_truncate(rqstp, cur_fh, open);
 if (status)
  goto out_put_access;
out:
 return status;
out_put_access:
 stp->st_access_bmap = old_access_bmap;
 nfs4_file_put_access(fp, open->op_share_access);
 reset_union_bmap_deny(bmap_to_share_mode(old_deny_bmap), stp);
 goto out;
}
