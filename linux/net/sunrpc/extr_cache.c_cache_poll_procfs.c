
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cache_detail {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 struct cache_detail* PDE_DATA (int ) ;
 int cache_poll (struct file*,int *,struct cache_detail*) ;
 int file_inode (struct file*) ;

__attribute__((used)) static __poll_t cache_poll_procfs(struct file *filp, poll_table *wait)
{
 struct cache_detail *cd = PDE_DATA(file_inode(filp));

 return cache_poll(filp, wait, cd);
}
