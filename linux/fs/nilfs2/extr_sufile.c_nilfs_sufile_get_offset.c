
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef scalar_t__ __u64 ;
struct TYPE_2__ {scalar_t__ mi_first_entry_offset; } ;


 TYPE_1__* NILFS_MDT (struct inode const*) ;
 unsigned long do_div (scalar_t__,int ) ;
 int nilfs_sufile_segment_usages_per_block (struct inode const*) ;

__attribute__((used)) static unsigned long
nilfs_sufile_get_offset(const struct inode *sufile, __u64 segnum)
{
 __u64 t = segnum + NILFS_MDT(sufile)->mi_first_entry_offset;

 return do_div(t, nilfs_sufile_segment_usages_per_block(sufile));
}
