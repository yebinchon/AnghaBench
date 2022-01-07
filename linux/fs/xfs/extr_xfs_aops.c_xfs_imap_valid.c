
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xfs_fileoff_t ;
struct TYPE_5__ {scalar_t__ br_startoff; scalar_t__ br_blockcount; } ;
struct xfs_writepage_ctx {scalar_t__ fork; scalar_t__ data_seq; scalar_t__ cow_seq; TYPE_2__ imap; } ;
struct TYPE_6__ {int if_seq; } ;
struct xfs_inode {TYPE_1__* i_cowfp; TYPE_3__ i_df; } ;
struct TYPE_4__ {int if_seq; } ;


 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ XFS_COW_FORK ;
 scalar_t__ xfs_inode_has_cow_data (struct xfs_inode*) ;

__attribute__((used)) static bool
xfs_imap_valid(
 struct xfs_writepage_ctx *wpc,
 struct xfs_inode *ip,
 xfs_fileoff_t offset_fsb)
{
 if (offset_fsb < wpc->imap.br_startoff ||
     offset_fsb >= wpc->imap.br_startoff + wpc->imap.br_blockcount)
  return 0;





 if (wpc->fork == XFS_COW_FORK)
  return 1;
 if (wpc->data_seq != READ_ONCE(ip->i_df.if_seq))
  return 0;
 if (xfs_inode_has_cow_data(ip) &&
     wpc->cow_seq != READ_ONCE(ip->i_cowfp->if_seq))
  return 0;
 return 1;
}
