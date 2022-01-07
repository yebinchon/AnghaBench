
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf_log_format {int blf_flags; } ;
typedef enum xfs_blft { ____Placeholder_xfs_blft } xfs_blft ;


 int ASSERT (int) ;
 int XFS_BLFT_MASK ;
 int XFS_BLFT_MAX_BUF ;
 int XFS_BLFT_SHIFT ;
 int XFS_BLFT_UNKNOWN_BUF ;

__attribute__((used)) static inline void
xfs_blft_to_flags(struct xfs_buf_log_format *blf, enum xfs_blft type)
{
 ASSERT(type > XFS_BLFT_UNKNOWN_BUF && type < XFS_BLFT_MAX_BUF);
 blf->blf_flags &= ~XFS_BLFT_MASK;
 blf->blf_flags |= ((type << XFS_BLFT_SHIFT) & XFS_BLFT_MASK);
}
