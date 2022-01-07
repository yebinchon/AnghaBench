
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ sync_mode; } ;
struct inode {int dummy; } ;


 scalar_t__ WB_SYNC_ALL ;
 int __omfs_write_inode (struct inode*,int) ;

__attribute__((used)) static int omfs_write_inode(struct inode *inode, struct writeback_control *wbc)
{
 return __omfs_write_inode(inode, wbc->sync_mode == WB_SYNC_ALL);
}
