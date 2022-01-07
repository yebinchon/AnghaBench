
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct TYPE_2__ {int i_flags; } ;


 int EXT4_EA_INODE_FL ;
 TYPE_1__* EXT4_I (struct inode const*) ;
 int inode_peek_iversion (struct inode const*) ;
 int inode_peek_iversion_raw (struct inode const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline u64 ext4_inode_peek_iversion(const struct inode *inode)
{
 if (unlikely(EXT4_I(inode)->i_flags & EXT4_EA_INODE_FL))
  return inode_peek_iversion_raw(inode);
 else
  return inode_peek_iversion(inode);
}
