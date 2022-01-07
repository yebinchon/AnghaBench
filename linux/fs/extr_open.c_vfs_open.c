
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; } ;
struct file {struct path f_path; } ;


 int d_backing_inode (int ) ;
 int do_dentry_open (struct file*,int ,int *) ;

int vfs_open(const struct path *path, struct file *file)
{
 file->f_path = *path;
 return do_dentry_open(file, d_backing_inode(path->dentry), ((void*)0));
}
