
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;


 int generic_file_open (struct inode*,struct file*) ;

__attribute__((used)) static int orangefs_file_open(struct inode * inode, struct file *file)
{
 file->private_data = ((void*)0);
 return generic_file_open(inode, file);
}
