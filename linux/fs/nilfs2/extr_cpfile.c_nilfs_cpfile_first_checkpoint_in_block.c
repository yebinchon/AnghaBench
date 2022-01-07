
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef unsigned long __u64 ;
struct TYPE_2__ {unsigned long mi_first_entry_offset; } ;


 TYPE_1__* NILFS_MDT (struct inode const*) ;
 scalar_t__ nilfs_cpfile_checkpoints_per_block (struct inode const*) ;

__attribute__((used)) static __u64 nilfs_cpfile_first_checkpoint_in_block(const struct inode *cpfile,
          unsigned long blkoff)
{
 return (__u64)nilfs_cpfile_checkpoints_per_block(cpfile) * blkoff
  + 1 - NILFS_MDT(cpfile)->mi_first_entry_offset;
}
