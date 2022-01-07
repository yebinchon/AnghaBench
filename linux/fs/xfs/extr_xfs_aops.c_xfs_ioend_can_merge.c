
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_ioend {scalar_t__ io_fork; scalar_t__ io_state; scalar_t__ io_offset; scalar_t__ io_size; TYPE_1__* io_bio; } ;
struct TYPE_2__ {scalar_t__ bi_status; } ;


 scalar_t__ XFS_COW_FORK ;
 scalar_t__ XFS_EXT_UNWRITTEN ;

__attribute__((used)) static bool
xfs_ioend_can_merge(
 struct xfs_ioend *ioend,
 struct xfs_ioend *next)
{
 if (ioend->io_bio->bi_status != next->io_bio->bi_status)
  return 0;
 if ((ioend->io_fork == XFS_COW_FORK) ^ (next->io_fork == XFS_COW_FORK))
  return 0;
 if ((ioend->io_state == XFS_EXT_UNWRITTEN) ^
     (next->io_state == XFS_EXT_UNWRITTEN))
  return 0;
 if (ioend->io_offset + ioend->io_size != next->io_offset)
  return 0;
 return 1;
}
