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
struct TYPE_3__ {scalar_t__ magic; int /*<<< orphan*/  back; int /*<<< orphan*/  forw; } ;
struct TYPE_4__ {scalar_t__ __count; scalar_t__ __level; TYPE_1__ info; } ;
struct xfs_da_intnode {TYPE_2__ hdr; } ;
struct xfs_da3_icnode_hdr {void* level; void* count; void* magic; void* back; void* forw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_DA_NODE_MAGIC ; 
 void* FUNC1 (scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(
	struct xfs_da3_icnode_hdr	*to,
	struct xfs_da_intnode		*from)
{
	FUNC0(from->hdr.info.magic == FUNC3(XFS_DA_NODE_MAGIC));
	to->forw = FUNC2(from->hdr.info.forw);
	to->back = FUNC2(from->hdr.info.back);
	to->magic = FUNC1(from->hdr.info.magic);
	to->count = FUNC1(from->hdr.__count);
	to->level = FUNC1(from->hdr.__level);
}