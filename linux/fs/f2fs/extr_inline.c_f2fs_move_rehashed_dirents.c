
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_inline_xattr_size; } ;


 int ENOMEM ;
 TYPE_1__* F2FS_I (struct inode*) ;
 int F2FS_I_SB (struct inode*) ;
 int FI_INLINE_DENTRY ;
 int GFP_F2FS_ZERO ;
 int MAX_INLINE_DATA (struct inode*) ;
 int NODE ;
 int clear_inode_flag (struct inode*,int ) ;
 int f2fs_add_inline_entries (struct inode*,void*) ;
 int f2fs_has_inline_xattr (struct inode*) ;
 int f2fs_i_depth_write (struct inode*,int ) ;
 int f2fs_i_size_write (struct inode*,int ) ;
 void* f2fs_kmalloc (int ,int ,int ) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_sb_has_flexible_inline_xattr (int ) ;
 int f2fs_truncate_inline_inode (struct inode*,struct page*,int ) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 int kvfree (void*) ;
 int lock_page (struct page*) ;
 int memcpy (void*,void*,int ) ;
 int set_page_dirty (struct page*) ;
 int stat_dec_inline_dir (struct inode*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int f2fs_move_rehashed_dirents(struct inode *dir, struct page *ipage,
       void *inline_dentry)
{
 void *backup_dentry;
 int err;

 backup_dentry = f2fs_kmalloc(F2FS_I_SB(dir),
    MAX_INLINE_DATA(dir), GFP_F2FS_ZERO);
 if (!backup_dentry) {
  f2fs_put_page(ipage, 1);
  return -ENOMEM;
 }

 memcpy(backup_dentry, inline_dentry, MAX_INLINE_DATA(dir));
 f2fs_truncate_inline_inode(dir, ipage, 0);

 unlock_page(ipage);

 err = f2fs_add_inline_entries(dir, backup_dentry);
 if (err)
  goto recover;

 lock_page(ipage);

 stat_dec_inline_dir(dir);
 clear_inode_flag(dir, FI_INLINE_DENTRY);





 if (!f2fs_sb_has_flexible_inline_xattr(F2FS_I_SB(dir)) &&
   !f2fs_has_inline_xattr(dir))
  F2FS_I(dir)->i_inline_xattr_size = 0;

 kvfree(backup_dentry);
 return 0;
recover:
 lock_page(ipage);
 f2fs_wait_on_page_writeback(ipage, NODE, 1, 1);
 memcpy(inline_dentry, backup_dentry, MAX_INLINE_DATA(dir));
 f2fs_i_depth_write(dir, 0);
 f2fs_i_size_write(dir, MAX_INLINE_DATA(dir));
 set_page_dirty(ipage);
 f2fs_put_page(ipage, 1);

 kvfree(backup_dentry);
 return err;
}
