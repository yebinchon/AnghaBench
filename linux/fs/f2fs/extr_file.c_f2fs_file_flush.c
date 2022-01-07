
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int fl_owner_t ;
struct TYPE_2__ {scalar_t__ inmem_task; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 scalar_t__ current ;
 int f2fs_drop_inmem_pages (struct inode*) ;
 scalar_t__ f2fs_is_atomic_file (struct inode*) ;
 struct inode* file_inode (struct file*) ;

__attribute__((used)) static int f2fs_file_flush(struct file *file, fl_owner_t id)
{
 struct inode *inode = file_inode(file);







 if (f2fs_is_atomic_file(inode) &&
   F2FS_I(inode)->inmem_task == current)
  f2fs_drop_inmem_pages(inode);
 return 0;
}
