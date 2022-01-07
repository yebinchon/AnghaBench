
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_daddr_t ;
typedef int xfs_dablk_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {TYPE_1__* i_mount; } ;
struct xfs_buf_ops {int dummy; } ;
struct xfs_buf_map {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_2__ {int m_ddev_targp; } ;


 int XFS_ATTR_BTREE_REF ;
 int XFS_ATTR_FORK ;
 int XFS_DIR_BTREE_REF ;
 int kmem_free (struct xfs_buf_map*) ;
 int xfs_buf_set_ref (struct xfs_buf*,int ) ;
 int xfs_dabuf_map (struct xfs_inode*,int ,int ,int,struct xfs_buf_map**,int*) ;
 int xfs_trans_read_buf_map (TYPE_1__*,struct xfs_trans*,int ,struct xfs_buf_map*,int,int ,struct xfs_buf**,struct xfs_buf_ops const*) ;

int
xfs_da_read_buf(
 struct xfs_trans *trans,
 struct xfs_inode *dp,
 xfs_dablk_t bno,
 xfs_daddr_t mappedbno,
 struct xfs_buf **bpp,
 int whichfork,
 const struct xfs_buf_ops *ops)
{
 struct xfs_buf *bp;
 struct xfs_buf_map map;
 struct xfs_buf_map *mapp;
 int nmap;
 int error;

 *bpp = ((void*)0);
 mapp = &map;
 nmap = 1;
 error = xfs_dabuf_map(dp, bno, mappedbno, whichfork,
    &mapp, &nmap);
 if (error) {

  if (error == -1)
   error = 0;
  goto out_free;
 }

 error = xfs_trans_read_buf_map(dp->i_mount, trans,
     dp->i_mount->m_ddev_targp,
     mapp, nmap, 0, &bp, ops);
 if (error)
  goto out_free;

 if (whichfork == XFS_ATTR_FORK)
  xfs_buf_set_ref(bp, XFS_ATTR_BTREE_REF);
 else
  xfs_buf_set_ref(bp, XFS_DIR_BTREE_REF);
 *bpp = bp;
out_free:
 if (mapp != &map)
  kmem_free(mapp);

 return error;
}
