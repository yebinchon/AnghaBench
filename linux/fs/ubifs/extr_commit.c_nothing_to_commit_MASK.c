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
struct TYPE_3__ {scalar_t__ znode; } ;
struct ubifs_info {scalar_t__ dirty_pn_cnt; scalar_t__ dirty_nn_cnt; int /*<<< orphan*/  dirty_zn_cnt; TYPE_2__* nroot; TYPE_1__ zroot; scalar_t__ remounting_rw; scalar_t__ mounting; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIRTY_CNODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct ubifs_info *c)
{
	/*
	 * During mounting or remounting from R/O mode to R/W mode we may
	 * commit for various recovery-related reasons.
	 */
	if (c->mounting || c->remounting_rw)
		return 0;

	/*
	 * If the root TNC node is dirty, we definitely have something to
	 * commit.
	 */
	if (c->zroot.znode && FUNC3(c->zroot.znode))
		return 0;

	/*
	 * Even though the TNC is clean, the LPT tree may have dirty nodes. For
	 * example, this may happen if the budgeting subsystem invoked GC to
	 * make some free space, and the GC found an LEB with only dirty and
	 * free space. In this case GC would just change the lprops of this
	 * LEB (by turning all space into free space) and unmap it.
	 */
	if (c->nroot && FUNC1(DIRTY_CNODE, &c->nroot->flags))
		return 0;

	FUNC2(c, FUNC0(&c->dirty_zn_cnt) == 0);
	FUNC2(c, c->dirty_pn_cnt == 0);
	FUNC2(c, c->dirty_nn_cnt == 0);

	return 1;
}