
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_agblock_t ;
struct TYPE_3__ {int agno; } ;
struct TYPE_4__ {TYPE_1__ a; } ;
struct xfs_btree_cur {TYPE_2__ bc_private; int bc_mp; } ;


 int xfs_verify_agbno (int ,int ,int ) ;

bool
xfs_btree_check_sptr(
 struct xfs_btree_cur *cur,
 xfs_agblock_t agbno,
 int level)
{
 if (level <= 0)
  return 0;
 return xfs_verify_agbno(cur->bc_mp, cur->bc_private.a.agno, agbno);
}
