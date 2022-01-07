
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_fs_info; } ;
struct hugetlbfs_sb_info {scalar_t__ spool; } ;


 struct hugetlbfs_sb_info* HUGETLBFS_SB (struct super_block*) ;
 int hugepage_put_subpool (scalar_t__) ;
 int kfree (struct hugetlbfs_sb_info*) ;

__attribute__((used)) static void hugetlbfs_put_super(struct super_block *sb)
{
 struct hugetlbfs_sb_info *sbi = HUGETLBFS_SB(sb);

 if (sbi) {
  sb->s_fs_info = ((void*)0);

  if (sbi->spool)
   hugepage_put_subpool(sbi->spool);

  kfree(sbi);
 }
}
