#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ xfs_fileoff_t ;
struct xfs_inode {int /*<<< orphan*/  i_mount; } ;
struct iomap {int /*<<< orphan*/  dax_dev; int /*<<< orphan*/  bdev; void* length; void* offset; int /*<<< orphan*/  type; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOMAP_HOLE ; 
 int /*<<< orphan*/  IOMAP_NULL_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_inode*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(
	struct xfs_inode	*ip,
	struct iomap		*iomap,
	xfs_fileoff_t		offset_fsb,
	xfs_fileoff_t		end_fsb)
{
	iomap->addr = IOMAP_NULL_ADDR;
	iomap->type = IOMAP_HOLE;
	iomap->offset = FUNC1(ip->i_mount, offset_fsb);
	iomap->length = FUNC1(ip->i_mount, end_fsb - offset_fsb);
	iomap->bdev = FUNC2(FUNC0(ip));
	iomap->dax_dev = FUNC3(FUNC0(ip));
}