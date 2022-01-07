
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mb_cache {int dummy; } ;
struct inode {int i_nlink; int i_ino; } ;
struct ext4_iloc {int dummy; } ;
typedef int s64 ;
typedef int handle_t ;


 struct mb_cache* EA_INODE_CACHE (struct inode*) ;
 int GFP_NOFS ;
 int WARN_ONCE (int,char*,int ,int) ;
 int clear_nlink (struct inode*) ;
 int ext4_mark_iloc_dirty (int *,struct inode*,struct ext4_iloc*) ;
 int ext4_orphan_add (int *,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 int ext4_reserve_inode_write (int *,struct inode*,struct ext4_iloc*) ;
 int ext4_warning_inode (struct inode*,char*,int) ;
 int ext4_xattr_inode_get_hash (struct inode*) ;
 int ext4_xattr_inode_get_ref (struct inode*) ;
 int ext4_xattr_inode_set_ref (struct inode*,int) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int mb_cache_entry_create (struct mb_cache*,int ,int ,int ,int) ;
 int mb_cache_entry_delete (struct mb_cache*,int ,int ) ;
 int set_nlink (struct inode*,int) ;

__attribute__((used)) static int ext4_xattr_inode_update_ref(handle_t *handle, struct inode *ea_inode,
           int ref_change)
{
 struct mb_cache *ea_inode_cache = EA_INODE_CACHE(ea_inode);
 struct ext4_iloc iloc;
 s64 ref_count;
 u32 hash;
 int ret;

 inode_lock(ea_inode);

 ret = ext4_reserve_inode_write(handle, ea_inode, &iloc);
 if (ret)
  goto out;

 ref_count = ext4_xattr_inode_get_ref(ea_inode);
 ref_count += ref_change;
 ext4_xattr_inode_set_ref(ea_inode, ref_count);

 if (ref_change > 0) {
  WARN_ONCE(ref_count <= 0, "EA inode %lu ref_count=%lld",
     ea_inode->i_ino, ref_count);

  if (ref_count == 1) {
   WARN_ONCE(ea_inode->i_nlink, "EA inode %lu i_nlink=%u",
      ea_inode->i_ino, ea_inode->i_nlink);

   set_nlink(ea_inode, 1);
   ext4_orphan_del(handle, ea_inode);

   if (ea_inode_cache) {
    hash = ext4_xattr_inode_get_hash(ea_inode);
    mb_cache_entry_create(ea_inode_cache,
            GFP_NOFS, hash,
            ea_inode->i_ino,
            1 );
   }
  }
 } else {
  WARN_ONCE(ref_count < 0, "EA inode %lu ref_count=%lld",
     ea_inode->i_ino, ref_count);

  if (ref_count == 0) {
   WARN_ONCE(ea_inode->i_nlink != 1,
      "EA inode %lu i_nlink=%u",
      ea_inode->i_ino, ea_inode->i_nlink);

   clear_nlink(ea_inode);
   ext4_orphan_add(handle, ea_inode);

   if (ea_inode_cache) {
    hash = ext4_xattr_inode_get_hash(ea_inode);
    mb_cache_entry_delete(ea_inode_cache, hash,
            ea_inode->i_ino);
   }
  }
 }

 ret = ext4_mark_iloc_dirty(handle, ea_inode, &iloc);
 if (ret)
  ext4_warning_inode(ea_inode,
       "ext4_mark_iloc_dirty() failed ret=%d", ret);
out:
 inode_unlock(ea_inode);
 return ret;
}
