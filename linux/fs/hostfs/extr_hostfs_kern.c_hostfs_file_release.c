
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; } ;
struct file {int dummy; } ;


 int filemap_write_and_wait (int ) ;

__attribute__((used)) static int hostfs_file_release(struct inode *inode, struct file *file)
{
 filemap_write_and_wait(inode->i_mapping);

 return 0;
}
