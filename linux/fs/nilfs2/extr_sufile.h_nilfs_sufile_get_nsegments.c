
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {unsigned long ns_nsegments; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {scalar_t__ s_fs_info; } ;



__attribute__((used)) static inline unsigned long nilfs_sufile_get_nsegments(struct inode *sufile)
{
 return ((struct the_nilfs *)sufile->i_sb->s_fs_info)->ns_nsegments;
}
