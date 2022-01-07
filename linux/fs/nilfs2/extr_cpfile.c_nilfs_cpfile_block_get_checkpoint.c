
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void nilfs_checkpoint ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __u64 ;
struct TYPE_2__ {int mi_entry_size; } ;


 TYPE_1__* NILFS_MDT (struct inode const*) ;
 int bh_offset (struct buffer_head*) ;
 int nilfs_cpfile_get_offset (struct inode const*,int ) ;

__attribute__((used)) static struct nilfs_checkpoint *
nilfs_cpfile_block_get_checkpoint(const struct inode *cpfile, __u64 cno,
      struct buffer_head *bh,
      void *kaddr)
{
 return kaddr + bh_offset(bh) + nilfs_cpfile_get_offset(cpfile, cno) *
  NILFS_MDT(cpfile)->mi_entry_size;
}
