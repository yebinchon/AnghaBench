
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_daddr_t ;
struct xfs_buftarg {int dummy; } ;
struct xfs_buf_ops {int dummy; } ;


 int DEFINE_SINGLE_BUF_MAP (int ,int ,size_t) ;
 int map ;
 void xfs_buf_readahead_map (struct xfs_buftarg*,int *,int,struct xfs_buf_ops const*) ;

__attribute__((used)) static inline void
xfs_buf_readahead(
 struct xfs_buftarg *target,
 xfs_daddr_t blkno,
 size_t numblks,
 const struct xfs_buf_ops *ops)
{
 DEFINE_SINGLE_BUF_MAP(map, blkno, numblks);
 return xfs_buf_readahead_map(target, &map, 1, ops);
}
