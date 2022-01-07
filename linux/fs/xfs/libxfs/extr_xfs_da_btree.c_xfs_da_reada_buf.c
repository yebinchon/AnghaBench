
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_daddr_t ;
typedef int xfs_dablk_t ;
struct xfs_inode {TYPE_1__* i_mount; } ;
struct xfs_buf_ops {int dummy; } ;
struct xfs_buf_map {int bm_bn; } ;
struct TYPE_2__ {int m_ddev_targp; } ;


 int kmem_free (struct xfs_buf_map*) ;
 int xfs_buf_readahead_map (int ,struct xfs_buf_map*,int,struct xfs_buf_ops const*) ;
 int xfs_dabuf_map (struct xfs_inode*,int ,int ,int,struct xfs_buf_map**,int*) ;

int
xfs_da_reada_buf(
 struct xfs_inode *dp,
 xfs_dablk_t bno,
 xfs_daddr_t mappedbno,
 int whichfork,
 const struct xfs_buf_ops *ops)
{
 struct xfs_buf_map map;
 struct xfs_buf_map *mapp;
 int nmap;
 int error;

 mapp = &map;
 nmap = 1;
 error = xfs_dabuf_map(dp, bno, mappedbno, whichfork,
    &mapp, &nmap);
 if (error) {

  if (error == -1)
   error = 0;
  goto out_free;
 }

 mappedbno = mapp[0].bm_bn;
 xfs_buf_readahead_map(dp->i_mount->m_ddev_targp, mapp, nmap, ops);

out_free:
 if (mapp != &map)
  kmem_free(mapp);

 return error;
}
