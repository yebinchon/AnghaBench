
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_inode_info {int ip_flags; int ip_lock; struct inode* ip_next_orphan; scalar_t__ ip_blkno; } ;
struct ocfs2_dinode {int i_flags; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef enum ocfs2_orphan_reco_type { ____Placeholder_ocfs2_orphan_reco_type } ocfs2_orphan_reco_type ;


 int ENOSPC ;
 int OCFS2_DIO_ORPHANED_FL ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_DIO_ORPHAN_ENTRY ;
 int OCFS2_INODE_MAYBE_ORPHANED ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (int ) ;
 int i_size_read (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int iput (struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_clear_recovering_orphan_dir (struct ocfs2_super*,int) ;
 int ocfs2_del_inode_from_orphan (struct ocfs2_super*,struct inode*,struct buffer_head*,int ,int ) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_mark_recovering_orphan_dir (struct ocfs2_super*,int) ;
 int ocfs2_queue_orphans (struct ocfs2_super*,int,struct inode**,int) ;
 int ocfs2_rw_lock (struct inode*,int) ;
 int ocfs2_rw_unlock (struct inode*,int) ;
 int ocfs2_truncate_file (struct inode*,struct buffer_head*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ocfs2_recover_orphans (int) ;
 int trace_ocfs2_recover_orphans_iput (unsigned long long) ;

__attribute__((used)) static int ocfs2_recover_orphans(struct ocfs2_super *osb,
     int slot,
     enum ocfs2_orphan_reco_type orphan_reco_type)
{
 int ret = 0;
 struct inode *inode = ((void*)0);
 struct inode *iter;
 struct ocfs2_inode_info *oi;
 struct buffer_head *di_bh = ((void*)0);
 struct ocfs2_dinode *di = ((void*)0);

 trace_ocfs2_recover_orphans(slot);

 ocfs2_mark_recovering_orphan_dir(osb, slot);
 ret = ocfs2_queue_orphans(osb, slot, &inode, orphan_reco_type);
 ocfs2_clear_recovering_orphan_dir(osb, slot);



 if (ret)
  mlog_errno(ret);

 while (inode) {
  oi = OCFS2_I(inode);
  trace_ocfs2_recover_orphans_iput(
     (unsigned long long)oi->ip_blkno);

  iter = oi->ip_next_orphan;
  oi->ip_next_orphan = ((void*)0);

  if (oi->ip_flags & OCFS2_INODE_DIO_ORPHAN_ENTRY) {
   inode_lock(inode);
   ret = ocfs2_rw_lock(inode, 1);
   if (ret < 0) {
    mlog_errno(ret);
    goto unlock_mutex;
   }




   ret = ocfs2_inode_lock(inode, &di_bh, 1);
   if (ret) {
    mlog_errno(ret);
    goto unlock_rw;
   }

   di = (struct ocfs2_dinode *)di_bh->b_data;

   if (di->i_flags & cpu_to_le32(OCFS2_DIO_ORPHANED_FL)) {
    ret = ocfs2_truncate_file(inode, di_bh,
      i_size_read(inode));
    if (ret < 0) {
     if (ret != -ENOSPC)
      mlog_errno(ret);
     goto unlock_inode;
    }

    ret = ocfs2_del_inode_from_orphan(osb, inode,
      di_bh, 0, 0);
    if (ret)
     mlog_errno(ret);
   }
unlock_inode:
   ocfs2_inode_unlock(inode, 1);
   brelse(di_bh);
   di_bh = ((void*)0);
unlock_rw:
   ocfs2_rw_unlock(inode, 1);
unlock_mutex:
   inode_unlock(inode);


   oi->ip_flags &= ~OCFS2_INODE_DIO_ORPHAN_ENTRY;
  } else {
   spin_lock(&oi->ip_lock);


   oi->ip_flags |= OCFS2_INODE_MAYBE_ORPHANED;
   spin_unlock(&oi->ip_lock);
  }

  iput(inode);
  inode = iter;
 }

 return ret;
}
