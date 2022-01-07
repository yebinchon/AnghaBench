
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct cache_detail {int dummy; } ;
struct TYPE_2__ {struct cache_detail* private; } ;


 TYPE_1__* RPC_I (struct inode*) ;
 int content_open (struct inode*,struct file*,struct cache_detail*) ;

__attribute__((used)) static int content_open_pipefs(struct inode *inode, struct file *filp)
{
 struct cache_detail *cd = RPC_I(inode)->private;

 return content_open(inode, filp, cd);
}
