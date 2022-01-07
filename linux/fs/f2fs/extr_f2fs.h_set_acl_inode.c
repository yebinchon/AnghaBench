
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int dummy; } ;
struct TYPE_2__ {int i_acl_mode; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 int FI_ACL_MODE ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 int set_inode_flag (struct inode*,int ) ;

__attribute__((used)) static inline void set_acl_inode(struct inode *inode, umode_t mode)
{
 F2FS_I(inode)->i_acl_mode = mode;
 set_inode_flag(inode, FI_ACL_MODE);
 f2fs_mark_inode_dirty_sync(inode, 0);
}
