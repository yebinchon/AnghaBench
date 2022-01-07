
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int slot_num; } ;
struct inode {int dummy; } ;


 int EINVAL ;
 int EROFS ;
 int ML_ERROR ;
 int NUM_SYSTEM_INODES ;
 int OCFS2_LAST_GLOBAL_SYSTEM_INODE ;
 int iput (struct inode*) ;
 int mlog (int ,char*,int,int,int ) ;
 int mlog_errno (int) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int,int ) ;
 scalar_t__ ocfs2_is_soft_readonly (struct ocfs2_super*) ;
 int ocfs2_need_system_inode (struct ocfs2_super*,int) ;
 int ocfs2_release_system_inodes (struct ocfs2_super*) ;

__attribute__((used)) static int ocfs2_init_local_system_inodes(struct ocfs2_super *osb)
{
 struct inode *new = ((void*)0);
 int status = 0;
 int i;

 for (i = OCFS2_LAST_GLOBAL_SYSTEM_INODE + 1;
      i < NUM_SYSTEM_INODES;
      i++) {
  if (!ocfs2_need_system_inode(osb, i))
   continue;
  new = ocfs2_get_system_file_inode(osb, i, osb->slot_num);
  if (!new) {
   ocfs2_release_system_inodes(osb);
   status = ocfs2_is_soft_readonly(osb) ? -EROFS : -EINVAL;
   mlog(ML_ERROR, "status=%d, sysfile=%d, slot=%d\n",
        status, i, osb->slot_num);
   goto bail;
  }

  iput(new);
 }

bail:
 if (status)
  mlog_errno(status);
 return status;
}
