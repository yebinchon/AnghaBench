
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int i_advise; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;

__attribute__((used)) static inline void set_file(struct inode *inode, int type)
{
 F2FS_I(inode)->i_advise |= type;
 f2fs_mark_inode_dirty_sync(inode, 1);
}
