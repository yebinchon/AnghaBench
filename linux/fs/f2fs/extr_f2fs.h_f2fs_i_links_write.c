
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int drop_nlink (struct inode*) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 int inc_nlink (struct inode*) ;

__attribute__((used)) static inline void f2fs_i_links_write(struct inode *inode, bool inc)
{
 if (inc)
  inc_nlink(inode);
 else
  drop_nlink(inode);
 f2fs_mark_inode_dirty_sync(inode, 1);
}
