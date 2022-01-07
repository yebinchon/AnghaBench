
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef scalar_t__ __u64 ;
struct TYPE_2__ {scalar_t__ mi_first_entry_offset; } ;


 TYPE_1__* NILFS_MDT (struct inode const*) ;
 int do_div (scalar_t__,int ) ;
 int nilfs_cpfile_checkpoints_per_block (struct inode const*) ;

__attribute__((used)) static unsigned long
nilfs_cpfile_get_blkoff(const struct inode *cpfile, __u64 cno)
{
 __u64 tcno = cno + NILFS_MDT(cpfile)->mi_first_entry_offset - 1;

 do_div(tcno, nilfs_cpfile_checkpoints_per_block(cpfile));
 return (unsigned long)tcno;
}
