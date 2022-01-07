
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct TYPE_2__ {int i_flags; } ;


 int EXT4_EA_INODE_FL ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int inode_set_iversion_queried (struct inode*,int ) ;
 int inode_set_iversion_raw (struct inode*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void ext4_inode_set_iversion_queried(struct inode *inode, u64 val)
{
 if (unlikely(EXT4_I(inode)->i_flags & EXT4_EA_INODE_FL))
  inode_set_iversion_raw(inode, val);
 else
  inode_set_iversion_queried(inode, val);
}
