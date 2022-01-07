
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_daddr_t ;
typedef int xfs_dablk_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {TYPE_1__* i_mount; } ;
struct xfs_buf_map {int dummy; } ;
struct xfs_buf {int b_error; } ;
struct TYPE_2__ {int m_ddev_targp; } ;


 int EIO ;
 int kmem_free (struct xfs_buf_map*) ;
 int xfs_dabuf_map (struct xfs_inode*,int ,int ,int,struct xfs_buf_map**,int*) ;
 int xfs_trans_brelse (struct xfs_trans*,struct xfs_buf*) ;
 struct xfs_buf* xfs_trans_get_buf_map (struct xfs_trans*,int ,struct xfs_buf_map*,int,int ) ;

int
xfs_da_get_buf(
 struct xfs_trans *trans,
 struct xfs_inode *dp,
 xfs_dablk_t bno,
 xfs_daddr_t mappedbno,
 struct xfs_buf **bpp,
 int whichfork)
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

 bp = xfs_trans_get_buf_map(trans, dp->i_mount->m_ddev_targp,
        mapp, nmap, 0);
 error = bp ? bp->b_error : -EIO;
 if (error) {
  if (bp)
   xfs_trans_brelse(trans, bp);
  goto out_free;
 }

 *bpp = bp;

out_free:
 if (mapp != &map)
  kmem_free(mapp);

 return error;
}
