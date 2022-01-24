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
struct xchk_ag {int /*<<< orphan*/ * cnt_cur; int /*<<< orphan*/ * bno_cur; int /*<<< orphan*/ * ino_cur; int /*<<< orphan*/ * fino_cur; int /*<<< orphan*/ * rmap_cur; int /*<<< orphan*/ * refc_cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_BTREE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC1(
	struct xchk_ag		*sa)
{
	if (sa->refc_cur)
		FUNC0(sa->refc_cur, XFS_BTREE_ERROR);
	if (sa->rmap_cur)
		FUNC0(sa->rmap_cur, XFS_BTREE_ERROR);
	if (sa->fino_cur)
		FUNC0(sa->fino_cur, XFS_BTREE_ERROR);
	if (sa->ino_cur)
		FUNC0(sa->ino_cur, XFS_BTREE_ERROR);
	if (sa->cnt_cur)
		FUNC0(sa->cnt_cur, XFS_BTREE_ERROR);
	if (sa->bno_cur)
		FUNC0(sa->bno_cur, XFS_BTREE_ERROR);

	sa->refc_cur = NULL;
	sa->rmap_cur = NULL;
	sa->fino_cur = NULL;
	sa->ino_cur = NULL;
	sa->bno_cur = NULL;
	sa->cnt_cur = NULL;
}