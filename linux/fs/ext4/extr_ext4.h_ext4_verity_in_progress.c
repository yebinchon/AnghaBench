
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int CONFIG_FS_VERITY ;
 int EXT4_STATE_VERITY_IN_PROGRESS ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ ext4_test_inode_state (struct inode*,int ) ;

__attribute__((used)) static inline bool ext4_verity_in_progress(struct inode *inode)
{
 return IS_ENABLED(CONFIG_FS_VERITY) &&
        ext4_test_inode_state(inode, EXT4_STATE_VERITY_IN_PROGRESS);
}
