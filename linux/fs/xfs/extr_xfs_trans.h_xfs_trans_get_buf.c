
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_daddr_t ;
typedef int uint ;
struct xfs_trans {int dummy; } ;
struct xfs_buftarg {int dummy; } ;
struct xfs_buf {int dummy; } ;


 int DEFINE_SINGLE_BUF_MAP (int ,int ,int) ;
 int map ;
 struct xfs_buf* xfs_trans_get_buf_map (struct xfs_trans*,struct xfs_buftarg*,int *,int,int ) ;

__attribute__((used)) static inline struct xfs_buf *
xfs_trans_get_buf(
 struct xfs_trans *tp,
 struct xfs_buftarg *target,
 xfs_daddr_t blkno,
 int numblks,
 uint flags)
{
 DEFINE_SINGLE_BUF_MAP(map, blkno, numblks);
 return xfs_trans_get_buf_map(tp, target, &map, 1, flags);
}
