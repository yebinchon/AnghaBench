
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_fileoff_t ;
struct xfs_inode {int i_mount; } ;
struct iomap {int dax_dev; int bdev; void* length; void* offset; int type; int addr; } ;


 int IOMAP_HOLE ;
 int IOMAP_NULL_ADDR ;
 int VFS_I (struct xfs_inode*) ;
 void* XFS_FSB_TO_B (int ,scalar_t__) ;
 int xfs_find_bdev_for_inode (int ) ;
 int xfs_find_daxdev_for_inode (int ) ;

__attribute__((used)) static void
xfs_hole_to_iomap(
 struct xfs_inode *ip,
 struct iomap *iomap,
 xfs_fileoff_t offset_fsb,
 xfs_fileoff_t end_fsb)
{
 iomap->addr = IOMAP_NULL_ADDR;
 iomap->type = IOMAP_HOLE;
 iomap->offset = XFS_FSB_TO_B(ip->i_mount, offset_fsb);
 iomap->length = XFS_FSB_TO_B(ip->i_mount, end_fsb - offset_fsb);
 iomap->bdev = xfs_find_bdev_for_inode(VFS_I(ip));
 iomap->dax_dev = xfs_find_daxdev_for_inode(VFS_I(ip));
}
