
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {unsigned long cache_validity; unsigned long read_cache_jiffies; int attr_gencount; int attrtimeo_timestamp; } ;
struct nfs4_change_info {scalar_t__ before; int after; scalar_t__ atomic; } ;
struct inode {int dummy; } ;


 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_ACCESS ;
 int NFS_INO_INVALID_ACL ;
 int NFS_INO_INVALID_CHANGE ;
 unsigned long NFS_INO_INVALID_CTIME ;
 unsigned long NFS_INO_INVALID_DATA ;
 unsigned long NFS_INO_INVALID_MTIME ;
 unsigned long NFS_INO_REVAL_PAGECACHE ;
 scalar_t__ inode_peek_iversion_raw (struct inode*) ;
 int inode_set_iversion_raw (struct inode*,int ) ;
 int jiffies ;
 int nfs_force_lookup_revalidate (struct inode*) ;
 int nfs_fscache_invalidate (struct inode*) ;
 int nfs_inc_attr_generation_counter () ;

__attribute__((used)) static void
update_changeattr_locked(struct inode *dir, struct nfs4_change_info *cinfo,
  unsigned long timestamp, unsigned long cache_validity)
{
 struct nfs_inode *nfsi = NFS_I(dir);

 nfsi->cache_validity |= NFS_INO_INVALID_CTIME
  | NFS_INO_INVALID_MTIME
  | NFS_INO_INVALID_DATA
  | cache_validity;
 if (cinfo->atomic && cinfo->before == inode_peek_iversion_raw(dir)) {
  nfsi->cache_validity &= ~NFS_INO_REVAL_PAGECACHE;
  nfsi->attrtimeo_timestamp = jiffies;
 } else {
  nfs_force_lookup_revalidate(dir);
  if (cinfo->before != inode_peek_iversion_raw(dir))
   nfsi->cache_validity |= NFS_INO_INVALID_ACCESS |
    NFS_INO_INVALID_ACL;
 }
 inode_set_iversion_raw(dir, cinfo->after);
 nfsi->read_cache_jiffies = timestamp;
 nfsi->attr_gencount = nfs_inc_attr_generation_counter();
 nfsi->cache_validity &= ~NFS_INO_INVALID_CHANGE;
 nfs_fscache_invalidate(dir);
}
