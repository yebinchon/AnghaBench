
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_inofree_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int ir_free; int ir_freecount; int ir_count; int ir_holemask; } ;
struct TYPE_4__ {TYPE_1__ i; } ;
struct xfs_btree_cur {TYPE_2__ bc_rec; } ;
typedef int int32_t ;


 int xfs_btree_insert (struct xfs_btree_cur*,int*) ;

int
xfs_inobt_insert_rec(
 struct xfs_btree_cur *cur,
 uint16_t holemask,
 uint8_t count,
 int32_t freecount,
 xfs_inofree_t free,
 int *stat)
{
 cur->bc_rec.i.ir_holemask = holemask;
 cur->bc_rec.i.ir_count = count;
 cur->bc_rec.i.ir_freecount = freecount;
 cur->bc_rec.i.ir_free = free;
 return xfs_btree_insert(cur, stat);
}
