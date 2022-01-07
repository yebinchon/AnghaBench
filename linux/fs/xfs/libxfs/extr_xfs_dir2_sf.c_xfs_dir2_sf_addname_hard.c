
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_30__ {int di_size; } ;
struct TYPE_27__ {scalar_t__ if_data; } ;
struct TYPE_28__ {TYPE_1__ if_u1; } ;
struct TYPE_31__ {TYPE_4__ i_d; TYPE_3__* d_ops; TYPE_2__ i_df; } ;
typedef TYPE_5__ xfs_inode_t ;
struct TYPE_32__ {int namelen; int i8count; int count; struct TYPE_32__* name; } ;
typedef TYPE_6__ xfs_dir2_sf_hdr_t ;
typedef TYPE_6__ xfs_dir2_sf_entry_t ;
typedef scalar_t__ xfs_dir2_data_aoff_t ;
struct TYPE_33__ {int namelen; scalar_t__ inumber; int filetype; TYPE_6__* name; TYPE_5__* dp; } ;
typedef TYPE_8__ xfs_da_args_t ;
struct TYPE_29__ {scalar_t__ data_first_offset; int (* data_entsize ) (int) ;TYPE_6__* (* sf_nextentry ) (TYPE_6__*,TYPE_6__*) ;int (* sf_put_ftype ) (TYPE_6__*,int ) ;int (* sf_put_ino ) (TYPE_6__*,TYPE_6__*,scalar_t__) ;} ;


 int XFS_DATA_FORK ;
 scalar_t__ XFS_DIR2_MAX_SHORT_INUM ;
 char* kmem_alloc (int,int ) ;
 int kmem_free (char*) ;
 int memcpy (TYPE_6__*,TYPE_6__*,int) ;
 int stub1 (int) ;
 int stub2 (int) ;
 TYPE_6__* stub3 (TYPE_6__*,TYPE_6__*) ;
 int stub4 (TYPE_6__*,TYPE_6__*,scalar_t__) ;
 int stub5 (TYPE_6__*,int ) ;
 TYPE_6__* stub6 (TYPE_6__*,TYPE_6__*) ;
 int xfs_dir2_sf_check (TYPE_8__*) ;
 TYPE_6__* xfs_dir2_sf_firstentry (TYPE_6__*) ;
 scalar_t__ xfs_dir2_sf_get_offset (TYPE_6__*) ;
 int xfs_dir2_sf_put_offset (TYPE_6__*,scalar_t__) ;
 int xfs_idata_realloc (TYPE_5__*,int,int ) ;

__attribute__((used)) static void
xfs_dir2_sf_addname_hard(
 xfs_da_args_t *args,
 int objchange,
 int new_isize)
{
 int add_datasize;
 char *buf;
 xfs_inode_t *dp;
 int eof;
 int nbytes;
 xfs_dir2_data_aoff_t new_offset;
 xfs_dir2_data_aoff_t offset;
 int old_isize;
 xfs_dir2_sf_entry_t *oldsfep;
 xfs_dir2_sf_hdr_t *oldsfp;
 xfs_dir2_sf_entry_t *sfep;
 xfs_dir2_sf_hdr_t *sfp;




 dp = args->dp;

 sfp = (xfs_dir2_sf_hdr_t *)dp->i_df.if_u1.if_data;
 old_isize = (int)dp->i_d.di_size;
 buf = kmem_alloc(old_isize, 0);
 oldsfp = (xfs_dir2_sf_hdr_t *)buf;
 memcpy(oldsfp, sfp, old_isize);





 for (offset = dp->d_ops->data_first_offset,
       oldsfep = xfs_dir2_sf_firstentry(oldsfp),
       add_datasize = dp->d_ops->data_entsize(args->namelen),
       eof = (char *)oldsfep == &buf[old_isize];
      !eof;
      offset = new_offset + dp->d_ops->data_entsize(oldsfep->namelen),
       oldsfep = dp->d_ops->sf_nextentry(oldsfp, oldsfep),
       eof = (char *)oldsfep == &buf[old_isize]) {
  new_offset = xfs_dir2_sf_get_offset(oldsfep);
  if (offset + add_datasize <= new_offset)
   break;
 }





 xfs_idata_realloc(dp, -old_isize, XFS_DATA_FORK);
 xfs_idata_realloc(dp, new_isize, XFS_DATA_FORK);



 sfp = (xfs_dir2_sf_hdr_t *)dp->i_df.if_u1.if_data;



 nbytes = (int)((char *)oldsfep - (char *)oldsfp);
 memcpy(sfp, oldsfp, nbytes);
 sfep = (xfs_dir2_sf_entry_t *)((char *)sfp + nbytes);



 sfep->namelen = args->namelen;
 xfs_dir2_sf_put_offset(sfep, offset);
 memcpy(sfep->name, args->name, sfep->namelen);
 dp->d_ops->sf_put_ino(sfp, sfep, args->inumber);
 dp->d_ops->sf_put_ftype(sfep, args->filetype);
 sfp->count++;
 if (args->inumber > XFS_DIR2_MAX_SHORT_INUM && !objchange)
  sfp->i8count++;



 if (!eof) {
  sfep = dp->d_ops->sf_nextentry(sfp, sfep);
  memcpy(sfep, oldsfep, old_isize - nbytes);
 }
 kmem_free(buf);
 dp->i_d.di_size = new_isize;
 xfs_dir2_sf_check(args);
}
