
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct ocfs2_dir_lookup_result {int * member_0; } ;
struct ocfs2_dinode {int i_flags; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {int ip_blkno; } ;


 int ENOSPC ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_DIO_ORPHANED_FL ;
 scalar_t__ OCFS2_DIO_ORPHAN_PREFIX_LEN ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_ADD_TO_ORPHAN_CREDITS ;
 scalar_t__ OCFS2_ORPHAN_NAMELEN ;
 int PTR_ERR (int *) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (int ) ;
 int i_size_read (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int iput (struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_del_inode_from_orphan (struct ocfs2_super*,struct inode*,struct buffer_head*,int ,int ) ;
 int ocfs2_free_dir_lookup_result (struct ocfs2_dir_lookup_result*) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_orphan_add (struct ocfs2_super*,int *,struct inode*,struct buffer_head*,char*,struct ocfs2_dir_lookup_result*,struct inode*,int) ;
 int ocfs2_prepare_orphan_dir (struct ocfs2_super*,struct inode**,int ,char*,struct ocfs2_dir_lookup_result*,int) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_truncate_file (struct inode*,struct buffer_head*,int ) ;
 scalar_t__ unlikely (int) ;

int ocfs2_add_inode_to_orphan(struct ocfs2_super *osb,
 struct inode *inode)
{
 char orphan_name[OCFS2_DIO_ORPHAN_PREFIX_LEN + OCFS2_ORPHAN_NAMELEN + 1];
 struct inode *orphan_dir_inode = ((void*)0);
 struct ocfs2_dir_lookup_result orphan_insert = { ((void*)0), };
 struct buffer_head *di_bh = ((void*)0);
 int status = 0;
 handle_t *handle = ((void*)0);
 struct ocfs2_dinode *di = ((void*)0);

 status = ocfs2_inode_lock(inode, &di_bh, 1);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 di = (struct ocfs2_dinode *) di_bh->b_data;




 if (unlikely(di->i_flags & cpu_to_le32(OCFS2_DIO_ORPHANED_FL))) {
  status = ocfs2_truncate_file(inode, di_bh, i_size_read(inode));
  if (status < 0) {
   if (status != -ENOSPC)
    mlog_errno(status);
   goto bail_unlock_inode;
  }

  status = ocfs2_del_inode_from_orphan(osb, inode, di_bh, 0, 0);
  if (status < 0) {
   mlog_errno(status);
   goto bail_unlock_inode;
  }
 }

 status = ocfs2_prepare_orphan_dir(osb, &orphan_dir_inode,
   OCFS2_I(inode)->ip_blkno,
   orphan_name,
   &orphan_insert,
   1);
 if (status < 0) {
  mlog_errno(status);
  goto bail_unlock_inode;
 }

 handle = ocfs2_start_trans(osb,
   OCFS2_INODE_ADD_TO_ORPHAN_CREDITS);
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  goto bail_unlock_orphan;
 }

 status = ocfs2_orphan_add(osb, handle, inode, di_bh, orphan_name,
   &orphan_insert, orphan_dir_inode, 1);
 if (status)
  mlog_errno(status);

 ocfs2_commit_trans(osb, handle);

bail_unlock_orphan:
 ocfs2_inode_unlock(orphan_dir_inode, 1);
 inode_unlock(orphan_dir_inode);
 iput(orphan_dir_inode);

 ocfs2_free_dir_lookup_result(&orphan_insert);

bail_unlock_inode:
 ocfs2_inode_unlock(inode, 1);
 brelse(di_bh);

bail:
 return status;
}
