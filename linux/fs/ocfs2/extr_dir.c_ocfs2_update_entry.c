
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_dir_lookup_result {struct buffer_head* dl_leaf_bh; struct ocfs2_dir_entry* dl_entry; } ;
struct ocfs2_dir_entry {int inode; } ;
struct inode {int i_mode; } ;
struct buffer_head {int dummy; } ;
typedef int (* ocfs2_journal_access_func ) (int *,int ,struct buffer_head*,int ) ;
typedef int handle_t ;
struct TYPE_2__ {int ip_dyn_features; int ip_blkno; } ;


 int INODE_CACHE (struct inode*) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int cpu_to_le64 (int ) ;
 int mlog_errno (int) ;
 int ocfs2_journal_access_db (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_set_de_type (struct ocfs2_dir_entry*,int ) ;

int ocfs2_update_entry(struct inode *dir, handle_t *handle,
         struct ocfs2_dir_lookup_result *res,
         struct inode *new_entry_inode)
{
 int ret;
 ocfs2_journal_access_func access = ocfs2_journal_access_db;
 struct ocfs2_dir_entry *de = res->dl_entry;
 struct buffer_head *de_bh = res->dl_leaf_bh;







 if (OCFS2_I(dir)->ip_dyn_features & OCFS2_INLINE_DATA_FL)
  access = ocfs2_journal_access_di;

 ret = access(handle, INODE_CACHE(dir), de_bh,
       OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 de->inode = cpu_to_le64(OCFS2_I(new_entry_inode)->ip_blkno);
 ocfs2_set_de_type(de, new_entry_inode->i_mode);

 ocfs2_journal_dirty(handle, de_bh);

out:
 return ret;
}
