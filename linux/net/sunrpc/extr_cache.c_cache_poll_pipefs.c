
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct cache_detail {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {struct cache_detail* private; } ;


 TYPE_1__* RPC_I (int ) ;
 int cache_poll (struct file*,int *,struct cache_detail*) ;
 int file_inode (struct file*) ;

__attribute__((used)) static __poll_t cache_poll_pipefs(struct file *filp, poll_table *wait)
{
 struct cache_detail *cd = RPC_I(file_inode(filp))->private;

 return cache_poll(filp, wait, cd);
}
