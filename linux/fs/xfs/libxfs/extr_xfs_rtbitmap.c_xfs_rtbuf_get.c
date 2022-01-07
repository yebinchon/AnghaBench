
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int xfs_trans_t ;
typedef int xfs_rtblock_t ;
struct TYPE_8__ {int m_bsize; int m_ddev_targp; int * m_rbmip; int * m_rsumip; } ;
typedef TYPE_1__ xfs_mount_t ;
typedef int xfs_inode_t ;
typedef int xfs_buf_t ;
struct TYPE_9__ {scalar_t__ br_startblock; } ;
typedef TYPE_2__ xfs_bmbt_irec_t ;


 int ASSERT (int) ;
 int EFSCORRUPTED ;
 scalar_t__ NULLFSBLOCK ;
 int XFS_BLFT_RTBITMAP_BUF ;
 int XFS_BLFT_RTSUMMARY_BUF ;
 int XFS_DATA_FORK ;
 int XFS_FSB_TO_DADDR (TYPE_1__*,scalar_t__) ;
 int xfs_bmap_is_real_extent (TYPE_2__*) ;
 int xfs_bmapi_read (int *,int ,int,TYPE_2__*,int*,int ) ;
 int xfs_rtbuf_ops ;
 int xfs_trans_buf_set_type (int *,int *,int ) ;
 int xfs_trans_read_buf (TYPE_1__*,int *,int ,int ,int ,int ,int **,int *) ;

int
xfs_rtbuf_get(
 xfs_mount_t *mp,
 xfs_trans_t *tp,
 xfs_rtblock_t block,
 int issum,
 xfs_buf_t **bpp)
{
 xfs_buf_t *bp;
 xfs_inode_t *ip;
 xfs_bmbt_irec_t map;
 int nmap = 1;
 int error;

 ip = issum ? mp->m_rsumip : mp->m_rbmip;

 error = xfs_bmapi_read(ip, block, 1, &map, &nmap, XFS_DATA_FORK);
 if (error)
  return error;

 if (nmap == 0 || !xfs_bmap_is_real_extent(&map))
  return -EFSCORRUPTED;

 ASSERT(map.br_startblock != NULLFSBLOCK);
 error = xfs_trans_read_buf(mp, tp, mp->m_ddev_targp,
       XFS_FSB_TO_DADDR(mp, map.br_startblock),
       mp->m_bsize, 0, &bp, &xfs_rtbuf_ops);
 if (error)
  return error;

 xfs_trans_buf_set_type(tp, bp, issum ? XFS_BLFT_RTSUMMARY_BUF
          : XFS_BLFT_RTBITMAP_BUF);
 *bpp = bp;
 return 0;
}
