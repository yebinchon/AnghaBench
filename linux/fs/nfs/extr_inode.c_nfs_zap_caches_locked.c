
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int cookieverf; int attrtimeo_timestamp; int attrtimeo; } ;
struct inode {int i_mode; } ;


 int NFSIOS_ATTRINVALIDATE ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_ACCESS ;
 int NFS_INO_INVALID_ACL ;
 int NFS_INO_INVALID_ATTR ;
 int NFS_INO_INVALID_DATA ;
 int NFS_INO_REVAL_PAGECACHE ;
 int NFS_MINATTRTIMEO (struct inode*) ;
 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISLNK (int) ;
 scalar_t__ S_ISREG (int) ;
 int jiffies ;
 int memset (int ,int ,int) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_set_cache_invalid (struct inode*,int) ;
 int nfs_zap_label_cache_locked (struct nfs_inode*) ;

__attribute__((used)) static void nfs_zap_caches_locked(struct inode *inode)
{
 struct nfs_inode *nfsi = NFS_I(inode);
 int mode = inode->i_mode;

 nfs_inc_stats(inode, NFSIOS_ATTRINVALIDATE);

 nfsi->attrtimeo = NFS_MINATTRTIMEO(inode);
 nfsi->attrtimeo_timestamp = jiffies;

 memset(NFS_I(inode)->cookieverf, 0, sizeof(NFS_I(inode)->cookieverf));
 if (S_ISREG(mode) || S_ISDIR(mode) || S_ISLNK(mode)) {
  nfs_set_cache_invalid(inode, NFS_INO_INVALID_ATTR
     | NFS_INO_INVALID_DATA
     | NFS_INO_INVALID_ACCESS
     | NFS_INO_INVALID_ACL
     | NFS_INO_REVAL_PAGECACHE);
 } else
  nfs_set_cache_invalid(inode, NFS_INO_INVALID_ATTR
     | NFS_INO_INVALID_ACCESS
     | NFS_INO_INVALID_ACL
     | NFS_INO_REVAL_PAGECACHE);
 nfs_zap_label_cache_locked(nfsi);
}
