
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_2__ {int policy; } ;


 TYPE_1__* HUGETLBFS_I (struct inode*) ;
 int HUGETLBFS_SB (int ) ;
 int hugetlbfs_inc_free_inodes (int ) ;
 int mpol_free_shared_policy (int *) ;

__attribute__((used)) static void hugetlbfs_destroy_inode(struct inode *inode)
{
 hugetlbfs_inc_free_inodes(HUGETLBFS_SB(inode->i_sb));
 mpol_free_shared_policy(&HUGETLBFS_I(inode)->policy);
}
