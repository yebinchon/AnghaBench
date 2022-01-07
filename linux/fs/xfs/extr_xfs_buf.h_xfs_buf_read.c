
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_daddr_t ;
typedef int xfs_buf_flags_t ;
struct xfs_buftarg {int dummy; } ;
struct xfs_buf_ops {int dummy; } ;
struct xfs_buf {int dummy; } ;


 int DEFINE_SINGLE_BUF_MAP (int ,int ,size_t) ;
 int map ;
 struct xfs_buf* xfs_buf_read_map (struct xfs_buftarg*,int *,int,int ,struct xfs_buf_ops const*) ;

__attribute__((used)) static inline struct xfs_buf *
xfs_buf_read(
 struct xfs_buftarg *target,
 xfs_daddr_t blkno,
 size_t numblks,
 xfs_buf_flags_t flags,
 const struct xfs_buf_ops *ops)
{
 DEFINE_SINGLE_BUF_MAP(map, blkno, numblks);
 return xfs_buf_read_map(target, &map, 1, flags, ops);
}
