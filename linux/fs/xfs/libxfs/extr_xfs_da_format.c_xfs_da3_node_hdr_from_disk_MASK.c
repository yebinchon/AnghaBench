#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ magic; } ;
struct TYPE_5__ {TYPE_4__ info; } ;
struct xfs_da_intnode {TYPE_1__ hdr; } ;
struct TYPE_6__ {int /*<<< orphan*/  magic; int /*<<< orphan*/  back; int /*<<< orphan*/  forw; } ;
struct TYPE_7__ {TYPE_2__ hdr; } ;
struct xfs_da3_node_hdr {int /*<<< orphan*/  __level; int /*<<< orphan*/  __count; TYPE_3__ info; } ;
struct xfs_da3_icnode_hdr {void* level; void* count; void* magic; void* back; void* forw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_DA3_NODE_MAGIC ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(
	struct xfs_da3_icnode_hdr	*to,
	struct xfs_da_intnode		*from)
{
	struct xfs_da3_node_hdr *hdr3 = (struct xfs_da3_node_hdr *)from;

	FUNC0(from->hdr.info.magic == FUNC3(XFS_DA3_NODE_MAGIC));
	to->forw = FUNC2(hdr3->info.hdr.forw);
	to->back = FUNC2(hdr3->info.hdr.back);
	to->magic = FUNC1(hdr3->info.hdr.magic);
	to->count = FUNC1(hdr3->__count);
	to->level = FUNC1(hdr3->__level);
}