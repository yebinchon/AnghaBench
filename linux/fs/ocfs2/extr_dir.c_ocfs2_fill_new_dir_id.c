
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct ocfs2_inline_data {int id_data; int id_count; } ;
struct TYPE_2__ {struct ocfs2_inline_data i_data; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;
struct inode {int i_blocks; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;


 int INODE_CACHE (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int i_size_write (struct inode*,unsigned int) ;
 unsigned int le16_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_fill_initial_dirents (struct inode*,struct inode*,int ,unsigned int) ;
 int ocfs2_inode_sector_count (struct inode*) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_mark_inode_dirty (int *,struct inode*,struct buffer_head*) ;
 int set_nlink (struct inode*,int) ;

__attribute__((used)) static int ocfs2_fill_new_dir_id(struct ocfs2_super *osb,
     handle_t *handle,
     struct inode *parent,
     struct inode *inode,
     struct buffer_head *di_bh)
{
 int ret;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
 struct ocfs2_inline_data *data = &di->id2.i_data;
 unsigned int size = le16_to_cpu(data->id_count);

 ret = ocfs2_journal_access_di(handle, INODE_CACHE(inode), di_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ocfs2_fill_initial_dirents(inode, parent, data->id_data, size);
 ocfs2_journal_dirty(handle, di_bh);

 i_size_write(inode, size);
 set_nlink(inode, 2);
 inode->i_blocks = ocfs2_inode_sector_count(inode);

 ret = ocfs2_mark_inode_dirty(handle, inode, di_bh);
 if (ret < 0)
  mlog_errno(ret);

out:
 return ret;
}
