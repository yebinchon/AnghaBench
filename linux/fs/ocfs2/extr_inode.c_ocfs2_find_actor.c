
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_inode_info {scalar_t__ ip_blkno; } ;
struct ocfs2_find_inode_args {scalar_t__ fi_blkno; } ;
struct inode {int i_ino; } ;


 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int mlog_bug_on_msg (int,char*) ;
 int trace_ocfs2_find_actor (struct inode*,int ,void*,scalar_t__) ;

__attribute__((used)) static int ocfs2_find_actor(struct inode *inode, void *opaque)
{
 struct ocfs2_find_inode_args *args = ((void*)0);
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 int ret = 0;

 args = opaque;

 mlog_bug_on_msg(!inode, "No inode in find actor!\n");

 trace_ocfs2_find_actor(inode, inode->i_ino, opaque, args->fi_blkno);

 if (oi->ip_blkno != args->fi_blkno)
  goto bail;

 ret = 1;
bail:
 return ret;
}
