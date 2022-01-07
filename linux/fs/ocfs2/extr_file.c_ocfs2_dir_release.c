
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ocfs2_free_file_private (struct inode*,struct file*) ;

__attribute__((used)) static int ocfs2_dir_release(struct inode *inode, struct file *file)
{
 ocfs2_free_file_private(inode, file);
 return 0;
}
