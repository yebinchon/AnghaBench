
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ocfs2_inode_info {int ip_lock; int ip_open_count; int ip_blkno; int ip_flags; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {TYPE_3__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_4__ {int name; int len; } ;
struct TYPE_6__ {TYPE_1__ d_name; } ;


 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_OPEN_DIRECT ;
 int ocfs2_free_file_private (struct inode*,struct file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ocfs2_file_release (struct inode*,struct file*,TYPE_3__*,int ,int ,int ,int ) ;

__attribute__((used)) static int ocfs2_file_release(struct inode *inode, struct file *file)
{
 struct ocfs2_inode_info *oi = OCFS2_I(inode);

 spin_lock(&oi->ip_lock);
 if (!--oi->ip_open_count)
  oi->ip_flags &= ~OCFS2_INODE_OPEN_DIRECT;

 trace_ocfs2_file_release(inode, file, file->f_path.dentry,
     oi->ip_blkno,
     file->f_path.dentry->d_name.len,
     file->f_path.dentry->d_name.name,
     oi->ip_open_count);
 spin_unlock(&oi->ip_lock);

 ocfs2_free_file_private(inode, file);

 return 0;
}
