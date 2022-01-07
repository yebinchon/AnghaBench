
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
struct cache_detail {int owner; } ;


 int module_put (int ) ;
 int seq_release (struct inode*,struct file*) ;

__attribute__((used)) static int content_release(struct inode *inode, struct file *file,
  struct cache_detail *cd)
{
 int ret = seq_release(inode, file);
 module_put(cd->owner);
 return ret;
}
