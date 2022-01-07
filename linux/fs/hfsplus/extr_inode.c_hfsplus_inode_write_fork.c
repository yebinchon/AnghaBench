
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_size; } ;
struct hfsplus_fork_raw {int total_blocks; int total_size; int extents; } ;
typedef int hfsplus_extent_rec ;
struct TYPE_2__ {int alloc_blocks; int first_extents; } ;


 TYPE_1__* HFSPLUS_I (struct inode*) ;
 int cpu_to_be32 (int ) ;
 int cpu_to_be64 (int ) ;
 int memcpy (int *,int *,int) ;

void hfsplus_inode_write_fork(struct inode *inode,
  struct hfsplus_fork_raw *fork)
{
 memcpy(&fork->extents, &HFSPLUS_I(inode)->first_extents,
        sizeof(hfsplus_extent_rec));
 fork->total_size = cpu_to_be64(inode->i_size);
 fork->total_blocks = cpu_to_be32(HFSPLUS_I(inode)->alloc_blocks);
}
