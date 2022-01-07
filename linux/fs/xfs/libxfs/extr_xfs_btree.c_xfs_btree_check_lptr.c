
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_fsblock_t ;
struct xfs_btree_cur {int bc_mp; } ;


 int xfs_verify_fsbno (int ,int ) ;

bool
xfs_btree_check_lptr(
 struct xfs_btree_cur *cur,
 xfs_fsblock_t fsbno,
 int level)
{
 if (level <= 0)
  return 0;
 return xfs_verify_fsbno(cur->bc_mp, fsbno);
}
