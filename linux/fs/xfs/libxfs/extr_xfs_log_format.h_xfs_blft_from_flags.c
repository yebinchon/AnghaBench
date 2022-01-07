
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct xfs_buf_log_format {int blf_flags; } ;


 int XFS_BLFT_MASK ;
 int XFS_BLFT_SHIFT ;

__attribute__((used)) static inline uint16_t
xfs_blft_from_flags(struct xfs_buf_log_format *blf)
{
 return (blf->blf_flags & XFS_BLFT_MASK) >> XFS_BLFT_SHIFT;
}
