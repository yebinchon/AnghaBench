
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_inode_info {scalar_t__ ip_blkno; } ;
typedef struct buffer_head* inode ;
struct buffer_head {int dummy; } ;


 int ENOENT ;
 struct ocfs2_inode_info* OCFS2_I (struct buffer_head**) ;
 int OI_LS_PARENT ;
 int OI_LS_RENAME1 ;
 int OI_LS_RENAME2 ;
 int brelse (struct buffer_head*) ;
 int mlog_errno (int) ;
 int ocfs2_check_if_ancestor (struct ocfs2_super*,scalar_t__,scalar_t__) ;
 int ocfs2_inode_lock_nested (struct buffer_head**,struct buffer_head**,int,int ) ;
 int ocfs2_inode_unlock (struct buffer_head**,int) ;
 int swap (struct buffer_head**,struct buffer_head**) ;
 int trace_ocfs2_double_lock (unsigned long long,unsigned long long) ;
 int trace_ocfs2_double_lock_end (unsigned long long,unsigned long long) ;

__attribute__((used)) static int ocfs2_double_lock(struct ocfs2_super *osb,
        struct buffer_head **bh1,
        struct inode *inode1,
        struct buffer_head **bh2,
        struct inode *inode2,
        int rename)
{
 int status;
 int inode1_is_ancestor, inode2_is_ancestor;
 struct ocfs2_inode_info *oi1 = OCFS2_I(inode1);
 struct ocfs2_inode_info *oi2 = OCFS2_I(inode2);

 trace_ocfs2_double_lock((unsigned long long)oi1->ip_blkno,
    (unsigned long long)oi2->ip_blkno);

 if (*bh1)
  *bh1 = ((void*)0);
 if (*bh2)
  *bh2 = ((void*)0);



 if (oi1->ip_blkno != oi2->ip_blkno) {
  inode1_is_ancestor = ocfs2_check_if_ancestor(osb, oi2->ip_blkno,
    oi1->ip_blkno);
  if (inode1_is_ancestor < 0) {
   status = inode1_is_ancestor;
   goto bail;
  }

  inode2_is_ancestor = ocfs2_check_if_ancestor(osb, oi1->ip_blkno,
    oi2->ip_blkno);
  if (inode2_is_ancestor < 0) {
   status = inode2_is_ancestor;
   goto bail;
  }

  if ((inode1_is_ancestor == 1) ||
    (oi1->ip_blkno < oi2->ip_blkno &&
    inode2_is_ancestor == 0)) {

   swap(bh2, bh1);
   swap(inode2, inode1);
  }

  status = ocfs2_inode_lock_nested(inode2, bh2, 1,
    rename == 1 ? OI_LS_RENAME1 : OI_LS_PARENT);
  if (status < 0) {
   if (status != -ENOENT)
    mlog_errno(status);
   goto bail;
  }
 }


 status = ocfs2_inode_lock_nested(inode1, bh1, 1,
   rename == 1 ? OI_LS_RENAME2 : OI_LS_PARENT);
 if (status < 0) {




  if (oi1->ip_blkno != oi2->ip_blkno) {
   ocfs2_inode_unlock(inode2, 1);
   brelse(*bh2);
   *bh2 = ((void*)0);
  }

  if (status != -ENOENT)
   mlog_errno(status);
 }

 trace_ocfs2_double_lock_end(
   (unsigned long long)oi1->ip_blkno,
   (unsigned long long)oi2->ip_blkno);

bail:
 if (status)
  mlog_errno(status);
 return status;
}
