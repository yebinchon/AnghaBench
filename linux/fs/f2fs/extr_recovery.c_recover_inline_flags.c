
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct f2fs_inode {int i_inline; } ;


 int F2FS_DATA_EXIST ;
 int F2FS_PIN_FILE ;
 int FI_DATA_EXIST ;
 int FI_PIN_FILE ;
 int clear_inode_flag (struct inode*,int ) ;
 int set_inode_flag (struct inode*,int ) ;

__attribute__((used)) static void recover_inline_flags(struct inode *inode, struct f2fs_inode *ri)
{
 if (ri->i_inline & F2FS_PIN_FILE)
  set_inode_flag(inode, FI_PIN_FILE);
 else
  clear_inode_flag(inode, FI_PIN_FILE);
 if (ri->i_inline & F2FS_DATA_EXIST)
  set_inode_flag(inode, FI_DATA_EXIST);
 else
  clear_inode_flag(inode, FI_DATA_EXIST);
}
