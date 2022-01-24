#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct xfs_da_geometry {int dummy; } ;
struct TYPE_11__ {void* magic; void* back; void* forw; } ;
struct TYPE_13__ {TYPE_5__* freemap; scalar_t__ pad1; int /*<<< orphan*/  holes; void* usedbytes; void* count; TYPE_4__ info; } ;
struct xfs_attr_leafblock {TYPE_6__ hdr; } ;
struct TYPE_8__ {void* magic; void* back; void* forw; } ;
struct TYPE_9__ {TYPE_1__ hdr; } ;
struct xfs_attr3_leaf_hdr {TYPE_3__* freemap; scalar_t__ pad1; int /*<<< orphan*/  holes; void* usedbytes; void* count; TYPE_2__ info; } ;
struct xfs_attr3_icleaf_hdr {scalar_t__ magic; scalar_t__ count; scalar_t__ usedbytes; TYPE_7__* freemap; int /*<<< orphan*/  holes; int /*<<< orphan*/  back; int /*<<< orphan*/  forw; } ;
struct TYPE_14__ {scalar_t__ base; scalar_t__ size; } ;
struct TYPE_12__ {void* size; void* base; } ;
struct TYPE_10__ {void* size; void* base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFS_ATTR3_LEAF_MAGIC ; 
 scalar_t__ XFS_ATTR_LEAF_MAGIC ; 
 int XFS_ATTR_LEAF_MAPSIZE ; 
 void* FUNC1 (scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_da_geometry*,struct xfs_attr_leafblock*,struct xfs_attr3_icleaf_hdr*) ; 

void
FUNC4(
	struct xfs_da_geometry		*geo,
	struct xfs_attr_leafblock	*to,
	struct xfs_attr3_icleaf_hdr	*from)
{
	int				i;

	FUNC0(from->magic == XFS_ATTR_LEAF_MAGIC ||
	       from->magic == XFS_ATTR3_LEAF_MAGIC);

	if (from->magic == XFS_ATTR3_LEAF_MAGIC) {
		struct xfs_attr3_leaf_hdr *hdr3 = (struct xfs_attr3_leaf_hdr *)to;

		hdr3->info.hdr.forw = FUNC2(from->forw);
		hdr3->info.hdr.back = FUNC2(from->back);
		hdr3->info.hdr.magic = FUNC1(from->magic);
		hdr3->count = FUNC1(from->count);
		hdr3->usedbytes = FUNC1(from->usedbytes);
		FUNC3(geo, to, from);
		hdr3->holes = from->holes;
		hdr3->pad1 = 0;

		for (i = 0; i < XFS_ATTR_LEAF_MAPSIZE; i++) {
			hdr3->freemap[i].base = FUNC1(from->freemap[i].base);
			hdr3->freemap[i].size = FUNC1(from->freemap[i].size);
		}
		return;
	}
	to->hdr.info.forw = FUNC2(from->forw);
	to->hdr.info.back = FUNC2(from->back);
	to->hdr.info.magic = FUNC1(from->magic);
	to->hdr.count = FUNC1(from->count);
	to->hdr.usedbytes = FUNC1(from->usedbytes);
	FUNC3(geo, to, from);
	to->hdr.holes = from->holes;
	to->hdr.pad1 = 0;

	for (i = 0; i < XFS_ATTR_LEAF_MAPSIZE; i++) {
		to->hdr.freemap[i].base = FUNC1(from->freemap[i].base);
		to->hdr.freemap[i].size = FUNC1(from->freemap[i].size);
	}
}