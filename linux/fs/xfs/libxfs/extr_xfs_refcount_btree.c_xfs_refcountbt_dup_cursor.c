
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int agno; int agbp; } ;
struct TYPE_4__ {TYPE_1__ a; } ;
struct xfs_btree_cur {TYPE_2__ bc_private; int bc_tp; int bc_mp; } ;


 struct xfs_btree_cur* xfs_refcountbt_init_cursor (int ,int ,int ,int ) ;

__attribute__((used)) static struct xfs_btree_cur *
xfs_refcountbt_dup_cursor(
 struct xfs_btree_cur *cur)
{
 return xfs_refcountbt_init_cursor(cur->bc_mp, cur->bc_tp,
   cur->bc_private.a.agbp, cur->bc_private.a.agno);
}
