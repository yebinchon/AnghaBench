
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;



__attribute__((used)) static inline int
pnfs_sync_inode(struct inode *inode, bool datasync)
{
 return 0;
}
