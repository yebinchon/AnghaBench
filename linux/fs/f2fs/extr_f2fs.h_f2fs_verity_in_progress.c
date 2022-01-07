
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int CONFIG_FS_VERITY ;
 int FI_VERITY_IN_PROGRESS ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;

__attribute__((used)) static inline bool f2fs_verity_in_progress(struct inode *inode)
{
 return IS_ENABLED(CONFIG_FS_VERITY) &&
        is_inode_flag_set(inode, FI_VERITY_IN_PROGRESS);
}
