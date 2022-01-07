
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_ino; scalar_t__ i_nlink; void* i_ctime; void* i_mtime; int i_sb; } ;
struct ext4_dir_entry_2 {int inode; } ;
struct TYPE_2__ {int name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
typedef struct buffer_head handle_t ;


 int EFSCORRUPTED ;
 int EIO ;
 int ENOENT ;
 int EXT4_DATA_TRANS_BLOCKS (int ) ;
 int EXT4_HT_DIR ;
 int EXT4_SB (int ) ;
 scalar_t__ IS_CASEFOLDED (struct inode*) ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PTR_ERR (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 void* current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_invalidate (struct dentry*) ;
 int dquot_initialize (struct inode*) ;
 int drop_nlink (struct inode*) ;
 int ext4_delete_entry (struct buffer_head*,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*) ;
 struct buffer_head* ext4_find_entry (struct inode*,TYPE_1__*,struct ext4_dir_entry_2**,int *) ;
 int ext4_forced_shutdown (int ) ;
 int ext4_handle_sync (struct buffer_head*) ;
 struct buffer_head* ext4_journal_start (struct inode*,int ,int ) ;
 int ext4_journal_stop (struct buffer_head*) ;
 int ext4_mark_inode_dirty (struct buffer_head*,struct inode*) ;
 int ext4_orphan_add (struct buffer_head*,struct inode*) ;
 int ext4_update_dx_flag (struct inode*) ;
 int ext4_warning_inode (struct inode*,char*,int ,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int set_nlink (struct inode*,int) ;
 int trace_ext4_unlink_enter (struct inode*,struct dentry*) ;
 int trace_ext4_unlink_exit (struct dentry*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ext4_unlink(struct inode *dir, struct dentry *dentry)
{
 int retval;
 struct inode *inode;
 struct buffer_head *bh;
 struct ext4_dir_entry_2 *de;
 handle_t *handle = ((void*)0);

 if (unlikely(ext4_forced_shutdown(EXT4_SB(dir->i_sb))))
  return -EIO;

 trace_ext4_unlink_enter(dir, dentry);


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
  goto end_unlink;

 inode = d_inode(dentry);

 retval = -EFSCORRUPTED;
 if (le32_to_cpu(de->inode) != inode->i_ino)
  goto end_unlink;

 handle = ext4_journal_start(dir, EXT4_HT_DIR,
        EXT4_DATA_TRANS_BLOCKS(dir->i_sb));
 if (IS_ERR(handle)) {
  retval = PTR_ERR(handle);
  handle = ((void*)0);
  goto end_unlink;
 }

 if (IS_DIRSYNC(dir))
  ext4_handle_sync(handle);

 if (inode->i_nlink == 0) {
  ext4_warning_inode(inode, "Deleting file '%.*s' with no links",
       dentry->d_name.len, dentry->d_name.name);
  set_nlink(inode, 1);
 }
 retval = ext4_delete_entry(handle, dir, de, bh);
 if (retval)
  goto end_unlink;
 dir->i_ctime = dir->i_mtime = current_time(dir);
 ext4_update_dx_flag(dir);
 ext4_mark_inode_dirty(handle, dir);
 drop_nlink(inode);
 if (!inode->i_nlink)
  ext4_orphan_add(handle, inode);
 inode->i_ctime = current_time(inode);
 ext4_mark_inode_dirty(handle, inode);
end_unlink:
 brelse(bh);
 if (handle)
  ext4_journal_stop(handle);
 trace_ext4_unlink_exit(dentry, retval);
 return retval;
}
