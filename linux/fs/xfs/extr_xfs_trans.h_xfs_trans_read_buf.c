
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_daddr_t ;
typedef int xfs_buf_flags_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_buftarg {int dummy; } ;
struct xfs_buf_ops {int dummy; } ;
struct xfs_buf {int dummy; } ;


 int DEFINE_SINGLE_BUF_MAP (int ,int ,int) ;
 int map ;
 int xfs_trans_read_buf_map (struct xfs_mount*,struct xfs_trans*,struct xfs_buftarg*,int *,int,int ,struct xfs_buf**,struct xfs_buf_ops const*) ;

__attribute__((used)) static inline int
xfs_trans_read_buf(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 struct xfs_buftarg *target,
 xfs_daddr_t blkno,
 int numblks,
 xfs_buf_flags_t flags,
 struct xfs_buf **bpp,
 const struct xfs_buf_ops *ops)
{
 DEFINE_SINGLE_BUF_MAP(map, blkno, numblks);
 return xfs_trans_read_buf_map(mp, tp, target, &map, 1,
          flags, bpp, ops);
}
