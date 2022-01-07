
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union xfs_btree_ptr {int dummy; } xfs_btree_ptr ;
typedef union xfs_btree_key {int dummy; } xfs_btree_key ;
struct xfs_buf {int b_bn; } ;
struct TYPE_11__ {int whichfork; int ip; } ;
struct TYPE_12__ {TYPE_5__ b; } ;
struct xfs_btree_cur {int bc_flags; int bc_nlevels; int* bc_ptrs; TYPE_6__ bc_private; TYPE_1__* bc_ops; } ;
struct TYPE_9__ {void* bb_blkno; } ;
struct TYPE_8__ {void* bb_blkno; } ;
struct TYPE_10__ {TYPE_3__ s; TYPE_2__ l; } ;
struct xfs_btree_block {int bb_numrecs; int bb_level; TYPE_4__ bb_u; } ;
struct TYPE_7__ {int (* alloc_block ) (struct xfs_btree_cur*,union xfs_btree_ptr*,union xfs_btree_ptr*,int*) ;} ;


 int ASSERT (int) ;
 int XFS_BB_ALL_BITS ;
 int XFS_BTREE_CRC_BLOCKS ;
 int XFS_BTREE_LONG_PTRS ;
 int XFS_BTREE_ROOT_IN_INODE ;
 int XFS_BTREE_STATS_INC (struct xfs_btree_cur*,int ) ;
 int XFS_ILOG_CORE ;
 int alloc ;
 int be16_add_cpu (int *,int) ;
 int be16_to_cpu (int ) ;
 void* cpu_to_be64 (int ) ;
 int memcpy (struct xfs_btree_block*,struct xfs_btree_block*,int ) ;
 int newroot ;
 int stub1 (struct xfs_btree_cur*,union xfs_btree_ptr*,union xfs_btree_ptr*,int*) ;
 int xfs_btree_block_len (struct xfs_btree_cur*) ;
 int xfs_btree_copy_keys (struct xfs_btree_cur*,union xfs_btree_key*,union xfs_btree_key*,int) ;
 int xfs_btree_copy_ptrs (struct xfs_btree_cur*,union xfs_btree_ptr*,union xfs_btree_ptr*,int) ;
 int xfs_btree_debug_check_ptr (struct xfs_btree_cur*,union xfs_btree_ptr*,int,int) ;
 int xfs_btree_get_buf_block (struct xfs_btree_cur*,union xfs_btree_ptr*,struct xfs_btree_block**,struct xfs_buf**) ;
 struct xfs_btree_block* xfs_btree_get_iroot (struct xfs_btree_cur*) ;
 int xfs_btree_get_numrecs (struct xfs_btree_block*) ;
 union xfs_btree_key* xfs_btree_key_addr (struct xfs_btree_cur*,int,struct xfs_btree_block*) ;
 int xfs_btree_log_block (struct xfs_btree_cur*,struct xfs_buf*,int ) ;
 int xfs_btree_log_keys (struct xfs_btree_cur*,struct xfs_buf*,int,int) ;
 int xfs_btree_log_ptrs (struct xfs_btree_cur*,struct xfs_buf*,int,int) ;
 union xfs_btree_ptr* xfs_btree_ptr_addr (struct xfs_btree_cur*,int,struct xfs_btree_block*) ;
 int xfs_btree_set_numrecs (struct xfs_btree_block*,int) ;
 int xfs_btree_setbuf (struct xfs_btree_cur*,int,struct xfs_buf*) ;
 int xfs_ilog_fbroot (int ) ;
 int xfs_iroot_realloc (int ,int,int ) ;

int
xfs_btree_new_iroot(
 struct xfs_btree_cur *cur,
 int *logflags,
 int *stat)
{
 struct xfs_buf *cbp;
 struct xfs_btree_block *block;
 struct xfs_btree_block *cblock;
 union xfs_btree_key *ckp;
 union xfs_btree_ptr *cpp;
 union xfs_btree_key *kp;
 union xfs_btree_ptr *pp;
 union xfs_btree_ptr nptr;
 int level;
 int error;
 int i;

 XFS_BTREE_STATS_INC(cur, newroot);

 ASSERT(cur->bc_flags & XFS_BTREE_ROOT_IN_INODE);

 level = cur->bc_nlevels - 1;

 block = xfs_btree_get_iroot(cur);
 pp = xfs_btree_ptr_addr(cur, 1, block);


 error = cur->bc_ops->alloc_block(cur, pp, &nptr, stat);
 if (error)
  goto error0;
 if (*stat == 0)
  return 0;

 XFS_BTREE_STATS_INC(cur, alloc);


 error = xfs_btree_get_buf_block(cur, &nptr, &cblock, &cbp);
 if (error)
  goto error0;





 memcpy(cblock, block, xfs_btree_block_len(cur));
 if (cur->bc_flags & XFS_BTREE_CRC_BLOCKS) {
  if (cur->bc_flags & XFS_BTREE_LONG_PTRS)
   cblock->bb_u.l.bb_blkno = cpu_to_be64(cbp->b_bn);
  else
   cblock->bb_u.s.bb_blkno = cpu_to_be64(cbp->b_bn);
 }

 be16_add_cpu(&block->bb_level, 1);
 xfs_btree_set_numrecs(block, 1);
 cur->bc_nlevels++;
 cur->bc_ptrs[level + 1] = 1;

 kp = xfs_btree_key_addr(cur, 1, block);
 ckp = xfs_btree_key_addr(cur, 1, cblock);
 xfs_btree_copy_keys(cur, ckp, kp, xfs_btree_get_numrecs(cblock));

 cpp = xfs_btree_ptr_addr(cur, 1, cblock);
 for (i = 0; i < be16_to_cpu(cblock->bb_numrecs); i++) {
  error = xfs_btree_debug_check_ptr(cur, pp, i, level);
  if (error)
   goto error0;
 }

 xfs_btree_copy_ptrs(cur, cpp, pp, xfs_btree_get_numrecs(cblock));

 error = xfs_btree_debug_check_ptr(cur, &nptr, 0, level);
 if (error)
  goto error0;

 xfs_btree_copy_ptrs(cur, pp, &nptr, 1);

 xfs_iroot_realloc(cur->bc_private.b.ip,
     1 - xfs_btree_get_numrecs(cblock),
     cur->bc_private.b.whichfork);

 xfs_btree_setbuf(cur, level, cbp);





 xfs_btree_log_block(cur, cbp, XFS_BB_ALL_BITS);
 xfs_btree_log_keys(cur, cbp, 1, be16_to_cpu(cblock->bb_numrecs));
 xfs_btree_log_ptrs(cur, cbp, 1, be16_to_cpu(cblock->bb_numrecs));

 *logflags |=
  XFS_ILOG_CORE | xfs_ilog_fbroot(cur->bc_private.b.whichfork);
 *stat = 1;
 return 0;
error0:
 return error;
}
