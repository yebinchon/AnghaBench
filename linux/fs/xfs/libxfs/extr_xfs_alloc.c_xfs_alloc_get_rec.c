
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xfs_extlen_t ;
typedef scalar_t__ xfs_agnumber_t ;
typedef char* xfs_agblock_t ;
struct TYPE_6__ {int ar_blockcount; int ar_startblock; } ;
union xfs_btree_rec {TYPE_3__ alloc; } ;
struct xfs_mount {int dummy; } ;
struct TYPE_4__ {scalar_t__ agno; } ;
struct TYPE_5__ {TYPE_1__ a; } ;
struct xfs_btree_cur {scalar_t__ bc_btnum; TYPE_2__ bc_private; struct xfs_mount* bc_mp; } ;


 int EFSCORRUPTED ;
 scalar_t__ XFS_BTNUM_BNO ;
 void* be32_to_cpu (int ) ;
 int xfs_btree_get_rec (struct xfs_btree_cur*,union xfs_btree_rec**,int*) ;
 int xfs_verify_agbno (struct xfs_mount*,scalar_t__,char*) ;
 int xfs_warn (struct xfs_mount*,char*,char*,scalar_t__) ;

int
xfs_alloc_get_rec(
 struct xfs_btree_cur *cur,
 xfs_agblock_t *bno,
 xfs_extlen_t *len,
 int *stat)
{
 struct xfs_mount *mp = cur->bc_mp;
 xfs_agnumber_t agno = cur->bc_private.a.agno;
 union xfs_btree_rec *rec;
 int error;

 error = xfs_btree_get_rec(cur, &rec, stat);
 if (error || !(*stat))
  return error;

 *bno = be32_to_cpu(rec->alloc.ar_startblock);
 *len = be32_to_cpu(rec->alloc.ar_blockcount);

 if (*len == 0)
  goto out_bad_rec;


 if (!xfs_verify_agbno(mp, agno, *bno))
  goto out_bad_rec;
 if (*bno > *bno + *len)
  goto out_bad_rec;
 if (!xfs_verify_agbno(mp, agno, *bno + *len - 1))
  goto out_bad_rec;

 return 0;

out_bad_rec:
 xfs_warn(mp,
  "%s Freespace BTree record corruption in AG %d detected!",
  cur->bc_btnum == XFS_BTNUM_BNO ? "Block" : "Size", agno);
 xfs_warn(mp,
  "start block 0x%x block count 0x%x", *bno, *len);
 return -EFSCORRUPTED;
}
