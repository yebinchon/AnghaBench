
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
struct cache_detail {int owner; } ;


 int module_put (int ) ;

__attribute__((used)) static int release_flush(struct inode *inode, struct file *file,
   struct cache_detail *cd)
{
 module_put(cd->owner);
 return 0;
}
