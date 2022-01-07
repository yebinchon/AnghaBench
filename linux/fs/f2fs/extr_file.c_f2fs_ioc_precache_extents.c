
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int f2fs_precache_extents (int ) ;
 int file_inode (struct file*) ;

__attribute__((used)) static int f2fs_ioc_precache_extents(struct file *filp, unsigned long arg)
{
 return f2fs_precache_extents(file_inode(filp));
}
