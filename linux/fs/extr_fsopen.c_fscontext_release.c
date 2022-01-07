
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fs_context {int dummy; } ;
struct file {struct fs_context* private_data; } ;


 int put_fs_context (struct fs_context*) ;

__attribute__((used)) static int fscontext_release(struct inode *inode, struct file *file)
{
 struct fs_context *fc = file->private_data;

 if (fc) {
  file->private_data = ((void*)0);
  put_fs_context(fc);
 }
 return 0;
}
