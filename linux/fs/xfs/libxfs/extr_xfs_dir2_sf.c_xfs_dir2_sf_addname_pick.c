
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ if_data; } ;
struct TYPE_18__ {TYPE_1__ if_u1; } ;
struct TYPE_21__ {TYPE_3__* d_ops; TYPE_2__ i_df; } ;
typedef TYPE_5__ xfs_inode_t ;
struct TYPE_22__ {int count; } ;
typedef TYPE_6__ xfs_dir2_sf_hdr_t ;
struct TYPE_23__ {int namelen; } ;
typedef TYPE_7__ xfs_dir2_sf_entry_t ;
typedef int xfs_dir2_leaf_entry_t ;
typedef int xfs_dir2_data_aoff_t ;
typedef int xfs_dir2_block_tail_t ;
struct TYPE_24__ {TYPE_4__* geo; int namelen; TYPE_5__* dp; } ;
typedef TYPE_8__ xfs_da_args_t ;
typedef int uint ;
struct TYPE_20__ {int blksize; } ;
struct TYPE_19__ {int (* data_entsize ) (int ) ;int data_first_offset; TYPE_7__* (* sf_nextentry ) (TYPE_6__*,TYPE_7__*) ;} ;


 int stub1 (int ) ;
 int stub2 (int ) ;
 TYPE_7__* stub3 (TYPE_6__*,TYPE_7__*) ;
 TYPE_7__* xfs_dir2_sf_firstentry (TYPE_6__*) ;
 int xfs_dir2_sf_get_offset (TYPE_7__*) ;

__attribute__((used)) static int
xfs_dir2_sf_addname_pick(
 xfs_da_args_t *args,
 int objchange,
 xfs_dir2_sf_entry_t **sfepp,
 xfs_dir2_data_aoff_t *offsetp)
{
 xfs_inode_t *dp;
 int holefit;
 int i;
 xfs_dir2_data_aoff_t offset;
 xfs_dir2_sf_entry_t *sfep;
 xfs_dir2_sf_hdr_t *sfp;
 int size;
 int used;

 dp = args->dp;

 sfp = (xfs_dir2_sf_hdr_t *)dp->i_df.if_u1.if_data;
 size = dp->d_ops->data_entsize(args->namelen);
 offset = dp->d_ops->data_first_offset;
 sfep = xfs_dir2_sf_firstentry(sfp);
 holefit = 0;





 for (i = 0; i < sfp->count; i++) {
  if (!holefit)
   holefit = offset + size <= xfs_dir2_sf_get_offset(sfep);
  offset = xfs_dir2_sf_get_offset(sfep) +
    dp->d_ops->data_entsize(sfep->namelen);
  sfep = dp->d_ops->sf_nextentry(sfp, sfep);
 }




 used = offset +
        (sfp->count + 3) * (uint)sizeof(xfs_dir2_leaf_entry_t) +
        (uint)sizeof(xfs_dir2_block_tail_t);





 if (used + (holefit ? 0 : size) > args->geo->blksize)
  return 0;



 if (objchange)
  return 2;



 if (used + size > args->geo->blksize)
  return 2;



 *sfepp = sfep;
 *offsetp = offset;
 return 1;
}
