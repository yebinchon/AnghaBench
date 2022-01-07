
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_cno; } ;
struct inode {TYPE_1__* i_sb; } ;
typedef int __u64 ;
struct TYPE_2__ {scalar_t__ s_fs_info; } ;



__attribute__((used)) static inline __u64 nilfs_mdt_cno(struct inode *inode)
{
 return ((struct the_nilfs *)inode->i_sb->s_fs_info)->ns_cno;
}
