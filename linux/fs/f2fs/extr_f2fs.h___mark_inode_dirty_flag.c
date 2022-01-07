
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;

__attribute__((used)) static inline void __mark_inode_dirty_flag(struct inode *inode,
      int flag, bool set)
{
 switch (flag) {
 case 130:
 case 133:
 case 132:
 case 129:
  if (set)
   return;

 case 134:
 case 131:
 case 128:
  f2fs_mark_inode_dirty_sync(inode, 1);
 }
}
