#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* magic; void* back; void* forw; } ;
struct TYPE_4__ {void* __level; void* __count; TYPE_1__ info; } ;
struct xfs_da_intnode {TYPE_2__ hdr; } ;
struct xfs_da3_icnode_hdr {scalar_t__ magic; scalar_t__ count; scalar_t__ level; int /*<<< orphan*/  back; int /*<<< orphan*/  forw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFS_DA_NODE_MAGIC ; 
 void* FUNC1 (scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(
	struct xfs_da_intnode		*to,
	struct xfs_da3_icnode_hdr	*from)
{
	FUNC0(from->magic == XFS_DA_NODE_MAGIC);
	to->hdr.info.forw = FUNC2(from->forw);
	to->hdr.info.back = FUNC2(from->back);
	to->hdr.info.magic = FUNC1(from->magic);
	to->hdr.__count = FUNC1(from->count);
	to->hdr.__level = FUNC1(from->level);
}