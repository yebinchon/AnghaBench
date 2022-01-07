
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_cpinfo {void* ci_next; void* ci_blocks_count; void* ci_inodes_count; void* ci_nblk_inc; void* ci_create; void* ci_cno; int ci_flags; } ;
struct TYPE_2__ {int ssl_next; } ;
struct nilfs_checkpoint {TYPE_1__ cp_snapshot_list; int cp_blocks_count; int cp_inodes_count; int cp_nblk_inc; int cp_create; int cp_cno; int cp_flags; } ;
struct inode {int dummy; } ;


 int le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;

__attribute__((used)) static void nilfs_cpfile_checkpoint_to_cpinfo(struct inode *cpfile,
           struct nilfs_checkpoint *cp,
           struct nilfs_cpinfo *ci)
{
 ci->ci_flags = le32_to_cpu(cp->cp_flags);
 ci->ci_cno = le64_to_cpu(cp->cp_cno);
 ci->ci_create = le64_to_cpu(cp->cp_create);
 ci->ci_nblk_inc = le64_to_cpu(cp->cp_nblk_inc);
 ci->ci_inodes_count = le64_to_cpu(cp->cp_inodes_count);
 ci->ci_blocks_count = le64_to_cpu(cp->cp_blocks_count);
 ci->ci_next = le64_to_cpu(cp->cp_snapshot_list.ssl_next);
}
