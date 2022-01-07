
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int pgoff_t ;


 int fuse_range_is_writeback (struct inode*,int ,int ) ;

__attribute__((used)) static inline bool fuse_page_is_writeback(struct inode *inode, pgoff_t index)
{
 return fuse_range_is_writeback(inode, index, index);
}
