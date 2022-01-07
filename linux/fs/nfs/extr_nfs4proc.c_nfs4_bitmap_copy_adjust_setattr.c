
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int __u32 ;


 int nfs4_bitmap_copy_adjust (int *,int const*,struct inode*) ;

__attribute__((used)) static void nfs4_bitmap_copy_adjust_setattr(__u32 *dst,
  const __u32 *src, struct inode *inode)
{
 nfs4_bitmap_copy_adjust(dst, src, inode);
}
