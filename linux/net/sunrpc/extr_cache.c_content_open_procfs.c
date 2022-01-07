
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
struct cache_detail {int dummy; } ;


 struct cache_detail* PDE_DATA (struct inode*) ;
 int content_open (struct inode*,struct file*,struct cache_detail*) ;

__attribute__((used)) static int content_open_procfs(struct inode *inode, struct file *filp)
{
 struct cache_detail *cd = PDE_DATA(inode);

 return content_open(inode, filp, cd);
}
