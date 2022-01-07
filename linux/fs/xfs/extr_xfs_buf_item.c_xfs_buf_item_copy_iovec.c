
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct xfs_log_vec {int dummy; } ;
struct xfs_log_iovec {int dummy; } ;
struct xfs_buf {int dummy; } ;


 int XFS_BLF_CHUNK ;
 int XLOG_REG_TYPE_BCHUNK ;
 int xfs_buf_offset (struct xfs_buf*,int) ;
 int xlog_copy_iovec (struct xfs_log_vec*,struct xfs_log_iovec**,int ,int ,int) ;

__attribute__((used)) static inline void
xfs_buf_item_copy_iovec(
 struct xfs_log_vec *lv,
 struct xfs_log_iovec **vecp,
 struct xfs_buf *bp,
 uint offset,
 int first_bit,
 uint nbits)
{
 offset += first_bit * XFS_BLF_CHUNK;
 xlog_copy_iovec(lv, vecp, XLOG_REG_TYPE_BCHUNK,
   xfs_buf_offset(bp, offset),
   nbits * XFS_BLF_CHUNK);
}
