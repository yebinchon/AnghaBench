
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {unsigned long mi_entries_per_block; } ;


 TYPE_1__* NILFS_MDT (struct inode const*) ;

__attribute__((used)) static inline unsigned long
nilfs_sufile_segment_usages_per_block(const struct inode *sufile)
{
 return NILFS_MDT(sufile)->mi_entries_per_block;
}
