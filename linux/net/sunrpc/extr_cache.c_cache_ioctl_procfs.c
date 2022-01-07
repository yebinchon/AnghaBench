
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
struct cache_detail {int dummy; } ;


 struct cache_detail* PDE_DATA (struct inode*) ;
 long cache_ioctl (struct inode*,struct file*,unsigned int,unsigned long,struct cache_detail*) ;
 struct inode* file_inode (struct file*) ;

__attribute__((used)) static long cache_ioctl_procfs(struct file *filp,
          unsigned int cmd, unsigned long arg)
{
 struct inode *inode = file_inode(filp);
 struct cache_detail *cd = PDE_DATA(inode);

 return cache_ioctl(inode, filp, cmd, arg, cd);
}
