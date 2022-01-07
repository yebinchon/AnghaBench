
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct hugepage_subpool {int dummy; } ;
struct TYPE_2__ {struct hugepage_subpool* spool; } ;


 TYPE_1__* HUGETLBFS_SB (int ) ;

__attribute__((used)) static inline struct hugepage_subpool *subpool_inode(struct inode *inode)
{
 return HUGETLBFS_SB(inode->i_sb)->spool;
}
