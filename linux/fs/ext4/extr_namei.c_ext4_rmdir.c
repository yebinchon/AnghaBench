
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_ino; int i_mtime; int i_ctime; scalar_t__ i_size; int i_nlink; int i_sb; } ;
struct ext4_dir_entry_2 {int inode; } ;
struct TYPE_2__ {int name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
typedef struct buffer_head handle_t ;


 int EFSCORRUPTED ;
 int EIO ;
 int ENOENT ;
 int ENOTEMPTY ;
 int EXT4_DATA_TRANS_BLOCKS (int ) ;
 int EXT4_DIR_LINK_EMPTY (struct inode*) ;
 int EXT4_HT_DIR ;
 int EXT4_SB (int ) ;
 scalar_t__ IS_CASEFOLDED (struct inode*) ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PTR_ERR (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 int clear_nlink (struct inode*) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_invalidate (struct dentry*) ;
 int dquot_initialize (struct inode*) ;
 int ext4_dec_count (struct buffer_head*,struct inode*) ;
 int ext4_delete_entry (struct buffer_head*,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*) ;
 int ext4_empty_dir (struct inode*) ;
 struct buffer_head* ext4_find_entry (struct inode*,TYPE_1__*,struct ext4_dir_entry_2**,int *) ;
 int ext4_forced_shutdown (int ) ;
 int ext4_handle_sync (struct buffer_head*) ;
 struct buffer_head* ext4_journal_start (struct inode*,int ,int ) ;
 int ext4_journal_stop (struct buffer_head*) ;
 int ext4_mark_inode_dirty (struct buffer_head*,struct inode*) ;
 int ext4_orphan_add (struct buffer_head*,struct inode*) ;
 int ext4_update_dx_flag (struct inode*) ;
 int ext4_warning_inode (struct inode*,char*,int ,int ,int ) ;
 int inode_inc_iversion (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ext4_rmdir(struct inode *dir, struct dentry *dentry)
{
 int retval;
 struct inode *inode;
 struct buffer_head *bh;
 struct ext4_dir_entry_2 *de;
 handle_t *handle = ((void*)0);

 if (unlikely(ext4_forced_shutdown(EXT4_SB(dir->i_sb))))
  return -EIO;



 retval = dquot_initialize(dir);
 if (retval)
  return retval;
 retval = dquot_initialize(d_inode(dentry));
 if (retval)
  return retval;

 retval = -ENOENT;
 bh = ext4_find_entry(dir, &dentry->d_name, &de, ((void*)0));
 if (IS_ERR(bh))
  return PTR_ERR(bh);
 if (!bh)
  goto end_rmdir;

 inode = d_inode(dentry);

 retval = -EFSCORRUPTED;
 if (le32_to_cpu(de->inode) != inode->i_ino)
  goto end_rmdir;

 retval = -ENOTEMPTY;
 if (!ext4_empty_dir(inode))
  goto end_rmdir;

 handle = ext4_journal_start(dir, EXT4_HT_DIR,
        EXT4_DATA_TRANS_BLOCKS(dir->i_sb));
 if (IS_ERR(handle)) {
  retval = PTR_ERR(handle);
  handle = ((void*)0);
  goto end_rmdir;
 }

 if (IS_DIRSYNC(dir))
  ext4_handle_sync(handle);

 retval = ext4_delete_entry(handle, dir, de, bh);
 if (retval)
  goto end_rmdir;
 if (!EXT4_DIR_LINK_EMPTY(inode))
  ext4_warning_inode(inode,
        "empty directory '%.*s' has too many links (%u)",
        dentry->d_name.len, dentry->d_name.name,
        inode->i_nlink);
 inode_inc_iversion(inode);
 clear_nlink(inode);



 inode->i_size = 0;
 ext4_orphan_add(handle, inode);
 inode->i_ctime = dir->i_ctime = dir->i_mtime = current_time(inode);
 ext4_mark_inode_dirty(handle, inode);
 ext4_dec_count(handle, dir);
 ext4_update_dx_flag(dir);
 ext4_mark_inode_dirty(handle, dir);
end_rmdir:
 brelse(bh);
 if (handle)
  ext4_journal_stop(handle);
 return retval;
}
