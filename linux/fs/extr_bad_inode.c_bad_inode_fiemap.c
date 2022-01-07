
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct fiemap_extent_info {int dummy; } ;


 int EIO ;

__attribute__((used)) static int bad_inode_fiemap(struct inode *inode,
       struct fiemap_extent_info *fieinfo, u64 start,
       u64 len)
{
 return -EIO;
}
