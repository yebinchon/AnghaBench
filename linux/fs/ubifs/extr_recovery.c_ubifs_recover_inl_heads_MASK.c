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
struct ubifs_info {int /*<<< orphan*/  nhead_offs; int /*<<< orphan*/  nhead_lnum; int /*<<< orphan*/  ihead_offs; int /*<<< orphan*/  ihead_lnum; scalar_t__ remounting_rw; int /*<<< orphan*/  ro_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ubifs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,int) ; 

int FUNC3(struct ubifs_info *c, void *sbuf)
{
	int err;

	FUNC2(c, !c->ro_mount || c->remounting_rw);

	FUNC0("checking index head at %d:%d", c->ihead_lnum, c->ihead_offs);
	err = FUNC1(c, c->ihead_lnum, c->ihead_offs, sbuf);
	if (err)
		return err;

	FUNC0("checking LPT head at %d:%d", c->nhead_lnum, c->nhead_offs);

	return FUNC1(c, c->nhead_lnum, c->nhead_offs, sbuf);
}