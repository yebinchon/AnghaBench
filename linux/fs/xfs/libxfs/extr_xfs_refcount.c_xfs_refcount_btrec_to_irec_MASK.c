#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  rc_refcount; int /*<<< orphan*/  rc_blockcount; int /*<<< orphan*/  rc_startblock; } ;
union xfs_btree_rec {TYPE_1__ refc; } ;
struct xfs_refcount_irec {void* rc_refcount; void* rc_blockcount; void* rc_startblock; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(
	union xfs_btree_rec		*rec,
	struct xfs_refcount_irec	*irec)
{
	irec->rc_startblock = FUNC0(rec->refc.rc_startblock);
	irec->rc_blockcount = FUNC0(rec->refc.rc_blockcount);
	irec->rc_refcount = FUNC0(rec->refc.rc_refcount);
}