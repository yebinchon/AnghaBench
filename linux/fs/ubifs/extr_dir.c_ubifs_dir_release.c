
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;


 int kfree (int *) ;

__attribute__((used)) static int ubifs_dir_release(struct inode *dir, struct file *file)
{
 kfree(file->private_data);
 file->private_data = ((void*)0);
 return 0;
}
