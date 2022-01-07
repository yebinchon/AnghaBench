
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_11__ {scalar_t__ di_format; } ;
struct TYPE_12__ {TYPE_2__ i_d; TYPE_7__* i_mount; } ;
typedef TYPE_3__ xfs_inode_t ;
typedef int xfs_ino_t ;
struct xfs_name {int len; int name; int type; } ;
struct xfs_da_args {int valuelen; int value; int inumber; int op_flags; int * trans; int whichfork; TYPE_3__* dp; int hashval; int filetype; int namelen; int name; int geo; } ;
struct TYPE_14__ {int i_mode; } ;
struct TYPE_13__ {TYPE_1__* m_dirnameops; int m_dir_geo; } ;
struct TYPE_10__ {int (* hashname ) (struct xfs_name*) ;} ;


 int ASSERT (int ) ;
 int EEXIST ;
 int KM_NOFS ;
 int S_ISDIR (int ) ;
 TYPE_8__* VFS_I (TYPE_3__*) ;
 int XFS_DATA_FORK ;
 int XFS_DA_OP_CILOOKUP ;
 int XFS_DA_OP_OKNOENT ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 int XFS_STATS_INC (TYPE_7__*,int ) ;
 int kmem_free (struct xfs_da_args*) ;
 struct xfs_da_args* kmem_zalloc (int,int ) ;
 int stub1 (struct xfs_name*) ;
 int xfs_dir2_block_lookup (struct xfs_da_args*) ;
 int xfs_dir2_isblock (struct xfs_da_args*,int*) ;
 int xfs_dir2_isleaf (struct xfs_da_args*,int*) ;
 int xfs_dir2_leaf_lookup (struct xfs_da_args*) ;
 int xfs_dir2_node_lookup (struct xfs_da_args*) ;
 int xfs_dir2_sf_lookup (struct xfs_da_args*) ;
 int xfs_ilock_data_map_shared (TYPE_3__*) ;
 int xfs_iunlock (TYPE_3__*,int) ;
 int xs_dir_lookup ;

int
xfs_dir_lookup(
 xfs_trans_t *tp,
 xfs_inode_t *dp,
 struct xfs_name *name,
 xfs_ino_t *inum,
 struct xfs_name *ci_name)
{
 struct xfs_da_args *args;
 int rval;
 int v;
 int lock_mode;

 ASSERT(S_ISDIR(VFS_I(dp)->i_mode));
 XFS_STATS_INC(dp->i_mount, xs_dir_lookup);
 args = kmem_zalloc(sizeof(*args), KM_NOFS);
 args->geo = dp->i_mount->m_dir_geo;
 args->name = name->name;
 args->namelen = name->len;
 args->filetype = name->type;
 args->hashval = dp->i_mount->m_dirnameops->hashname(name);
 args->dp = dp;
 args->whichfork = XFS_DATA_FORK;
 args->trans = tp;
 args->op_flags = XFS_DA_OP_OKNOENT;
 if (ci_name)
  args->op_flags |= XFS_DA_OP_CILOOKUP;

 lock_mode = xfs_ilock_data_map_shared(dp);
 if (dp->i_d.di_format == XFS_DINODE_FMT_LOCAL) {
  rval = xfs_dir2_sf_lookup(args);
  goto out_check_rval;
 }

 rval = xfs_dir2_isblock(args, &v);
 if (rval)
  goto out_free;
 if (v) {
  rval = xfs_dir2_block_lookup(args);
  goto out_check_rval;
 }

 rval = xfs_dir2_isleaf(args, &v);
 if (rval)
  goto out_free;
 if (v)
  rval = xfs_dir2_leaf_lookup(args);
 else
  rval = xfs_dir2_node_lookup(args);

out_check_rval:
 if (rval == -EEXIST)
  rval = 0;
 if (!rval) {
  *inum = args->inumber;
  if (ci_name) {
   ci_name->name = args->value;
   ci_name->len = args->valuelen;
  }
 }
out_free:
 xfs_iunlock(dp, lock_mode);
 kmem_free(args);
 return rval;
}
