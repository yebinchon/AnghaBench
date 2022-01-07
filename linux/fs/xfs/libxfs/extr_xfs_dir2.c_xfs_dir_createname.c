
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ xfs_ino_t ;
typedef int xfs_extlen_t ;
struct xfs_trans {int t_mountp; } ;
struct xfs_name {int type; int len; int name; } ;
struct TYPE_6__ {scalar_t__ di_format; } ;
struct xfs_inode {TYPE_2__ i_d; TYPE_3__* i_mount; } ;
struct xfs_da_args {int op_flags; struct xfs_trans* trans; int whichfork; int total; struct xfs_inode* dp; scalar_t__ inumber; int hashval; int filetype; int namelen; int name; int geo; } ;
struct TYPE_8__ {int i_mode; } ;
struct TYPE_7__ {TYPE_1__* m_dirnameops; int m_dir_geo; } ;
struct TYPE_5__ {int (* hashname ) (struct xfs_name*) ;} ;


 int ASSERT (int ) ;
 int ENOMEM ;
 int KM_NOFS ;
 int S_ISDIR (int ) ;
 TYPE_4__* VFS_I (struct xfs_inode*) ;
 int XFS_DATA_FORK ;
 int XFS_DA_OP_ADDNAME ;
 int XFS_DA_OP_JUSTCHECK ;
 int XFS_DA_OP_OKNOENT ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 int XFS_STATS_INC (TYPE_3__*,int ) ;
 int kmem_free (struct xfs_da_args*) ;
 struct xfs_da_args* kmem_zalloc (int,int ) ;
 int stub1 (struct xfs_name*) ;
 int xfs_dir2_block_addname (struct xfs_da_args*) ;
 int xfs_dir2_isblock (struct xfs_da_args*,int*) ;
 int xfs_dir2_isleaf (struct xfs_da_args*,int*) ;
 int xfs_dir2_leaf_addname (struct xfs_da_args*) ;
 int xfs_dir2_node_addname (struct xfs_da_args*) ;
 int xfs_dir2_sf_addname (struct xfs_da_args*) ;
 int xfs_dir_ino_validate (int ,scalar_t__) ;
 int xs_dir_create ;

int
xfs_dir_createname(
 struct xfs_trans *tp,
 struct xfs_inode *dp,
 struct xfs_name *name,
 xfs_ino_t inum,
 xfs_extlen_t total)
{
 struct xfs_da_args *args;
 int rval;
 int v;

 ASSERT(S_ISDIR(VFS_I(dp)->i_mode));

 if (inum) {
  rval = xfs_dir_ino_validate(tp->t_mountp, inum);
  if (rval)
   return rval;
  XFS_STATS_INC(dp->i_mount, xs_dir_create);
 }

 args = kmem_zalloc(sizeof(*args), KM_NOFS);
 if (!args)
  return -ENOMEM;

 args->geo = dp->i_mount->m_dir_geo;
 args->name = name->name;
 args->namelen = name->len;
 args->filetype = name->type;
 args->hashval = dp->i_mount->m_dirnameops->hashname(name);
 args->inumber = inum;
 args->dp = dp;
 args->total = total;
 args->whichfork = XFS_DATA_FORK;
 args->trans = tp;
 args->op_flags = XFS_DA_OP_ADDNAME | XFS_DA_OP_OKNOENT;
 if (!inum)
  args->op_flags |= XFS_DA_OP_JUSTCHECK;

 if (dp->i_d.di_format == XFS_DINODE_FMT_LOCAL) {
  rval = xfs_dir2_sf_addname(args);
  goto out_free;
 }

 rval = xfs_dir2_isblock(args, &v);
 if (rval)
  goto out_free;
 if (v) {
  rval = xfs_dir2_block_addname(args);
  goto out_free;
 }

 rval = xfs_dir2_isleaf(args, &v);
 if (rval)
  goto out_free;
 if (v)
  rval = xfs_dir2_leaf_addname(args);
 else
  rval = xfs_dir2_node_addname(args);

out_free:
 kmem_free(args);
 return rval;
}
