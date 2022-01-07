
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_server {int dummy; } ;
struct nfs_inode {int cache_validity; int flags; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_label {int dummy; } ;
struct inode {TYPE_1__* i_sb; int i_mode; } ;
struct TYPE_4__ {int (* getattr ) (struct nfs_server*,int ,struct nfs_fattr*,struct nfs4_label*,struct inode*) ;} ;
struct TYPE_3__ {int s_id; } ;


 int ENOMEM ;
 int ESTALE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct nfs4_label*) ;
 int NFSIOS_INODEREVALIDATE ;
 int NFS_FH (struct inode*) ;
 scalar_t__ NFS_FILEID (struct inode*) ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_ACL ;
 int NFS_INO_STALE ;
 TYPE_2__* NFS_PROTO (struct inode*) ;
 int NFS_SERVER (struct inode*) ;
 scalar_t__ NFS_STALE (struct inode*) ;
 int PAGECACHE ;
 int PTR_ERR (struct nfs4_label*) ;
 int S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int dfprintk (int ,char*,int ,unsigned long long,...) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 struct nfs4_label* nfs4_label_alloc (int ,int ) ;
 int nfs4_label_free (struct nfs4_label*) ;
 struct nfs_fattr* nfs_alloc_fattr () ;
 int nfs_free_fattr (struct nfs_fattr*) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_refresh_inode (struct inode*,struct nfs_fattr*) ;
 int nfs_setsecurity (struct inode*,struct nfs_fattr*,struct nfs4_label*) ;
 int nfs_zap_acl_cache (struct inode*) ;
 int nfs_zap_caches (struct inode*) ;
 int pnfs_sync_inode (struct inode*,int) ;
 int set_bit (int ,int *) ;
 int stub1 (struct nfs_server*,int ,struct nfs_fattr*,struct nfs4_label*,struct inode*) ;
 int trace_nfs_revalidate_inode_enter (struct inode*) ;
 int trace_nfs_revalidate_inode_exit (struct inode*,int) ;

int
__nfs_revalidate_inode(struct nfs_server *server, struct inode *inode)
{
 int status = -ESTALE;
 struct nfs4_label *label = ((void*)0);
 struct nfs_fattr *fattr = ((void*)0);
 struct nfs_inode *nfsi = NFS_I(inode);

 dfprintk(PAGECACHE, "NFS: revalidating (%s/%Lu)\n",
  inode->i_sb->s_id, (unsigned long long)NFS_FILEID(inode));

 trace_nfs_revalidate_inode_enter(inode);

 if (is_bad_inode(inode))
  goto out;
 if (NFS_STALE(inode))
  goto out;


 if (S_ISREG(inode->i_mode)) {
  status = pnfs_sync_inode(inode, 0);
  if (status)
   goto out;
 }

 status = -ENOMEM;
 fattr = nfs_alloc_fattr();
 if (fattr == ((void*)0))
  goto out;

 nfs_inc_stats(inode, NFSIOS_INODEREVALIDATE);

 label = nfs4_label_alloc(NFS_SERVER(inode), GFP_KERNEL);
 if (IS_ERR(label)) {
  status = PTR_ERR(label);
  goto out;
 }

 status = NFS_PROTO(inode)->getattr(server, NFS_FH(inode), fattr,
   label, inode);
 if (status != 0) {
  dfprintk(PAGECACHE, "nfs_revalidate_inode: (%s/%Lu) getattr failed, error=%d\n",
    inode->i_sb->s_id,
    (unsigned long long)NFS_FILEID(inode), status);
  if (status == -ESTALE) {
   nfs_zap_caches(inode);
   if (!S_ISDIR(inode->i_mode))
    set_bit(NFS_INO_STALE, &NFS_I(inode)->flags);
  }
  goto err_out;
 }

 status = nfs_refresh_inode(inode, fattr);
 if (status) {
  dfprintk(PAGECACHE, "nfs_revalidate_inode: (%s/%Lu) refresh failed, error=%d\n",
    inode->i_sb->s_id,
    (unsigned long long)NFS_FILEID(inode), status);
  goto err_out;
 }

 if (nfsi->cache_validity & NFS_INO_INVALID_ACL)
  nfs_zap_acl_cache(inode);

 nfs_setsecurity(inode, fattr, label);

 dfprintk(PAGECACHE, "NFS: (%s/%Lu) revalidation complete\n",
  inode->i_sb->s_id,
  (unsigned long long)NFS_FILEID(inode));

err_out:
 nfs4_label_free(label);
out:
 nfs_free_fattr(fattr);
 trace_nfs_revalidate_inode_exit(inode, status);
 return status;
}
