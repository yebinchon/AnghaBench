
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int loff_t ;


 int EFBIG ;
 int nommu_shrink_inode_mappings (struct inode*,int,int) ;
 int ramfs_nommu_expand_for_mapping (struct inode*,int) ;
 int truncate_setsize (struct inode*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ramfs_nommu_resize(struct inode *inode, loff_t newsize, loff_t size)
{
 int ret;



 if (size == 0) {
  if (unlikely(newsize >> 32))
   return -EFBIG;

  return ramfs_nommu_expand_for_mapping(inode, newsize);
 }


 if (newsize < size) {
  ret = nommu_shrink_inode_mappings(inode, size, newsize);
  if (ret < 0)
   return ret;
 }

 truncate_setsize(inode, newsize);
 return 0;
}
