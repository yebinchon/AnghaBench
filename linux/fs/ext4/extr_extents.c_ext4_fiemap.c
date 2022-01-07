
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fiemap_extent_info {int dummy; } ;
typedef int __u64 ;


 int _ext4_fiemap (struct inode*,struct fiemap_extent_info*,int ,int ,int ) ;
 int ext4_fill_fiemap_extents ;

int ext4_fiemap(struct inode *inode, struct fiemap_extent_info *fieinfo,
  __u64 start, __u64 len)
{
 return _ext4_fiemap(inode, fieinfo, start, len,
       ext4_fill_fiemap_extents);
}
