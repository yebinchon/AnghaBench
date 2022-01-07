
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ i_ino; int i_mount; } ;
typedef TYPE_1__ xfs_inode_t ;
struct TYPE_6__ {int br_state; scalar_t__ br_blockcount; scalar_t__ br_startoff; scalar_t__ br_startblock; } ;
typedef TYPE_2__ xfs_bmbt_irec_t ;


 int EFSCORRUPTED ;
 int XFS_PTAG_FSBLOCK_ZERO ;
 int xfs_alert_tag (int ,int ,char*,unsigned long long,unsigned long long,unsigned long long,unsigned long long,int ) ;

__attribute__((used)) static int
xfs_alert_fsblock_zero(
 xfs_inode_t *ip,
 xfs_bmbt_irec_t *imap)
{
 xfs_alert_tag(ip->i_mount, XFS_PTAG_FSBLOCK_ZERO,
   "Access to block zero in inode %llu "
   "start_block: %llx start_off: %llx "
   "blkcnt: %llx extent-state: %x",
  (unsigned long long)ip->i_ino,
  (unsigned long long)imap->br_startblock,
  (unsigned long long)imap->br_startoff,
  (unsigned long long)imap->br_blockcount,
  imap->br_state);
 return -EFSCORRUPTED;
}
