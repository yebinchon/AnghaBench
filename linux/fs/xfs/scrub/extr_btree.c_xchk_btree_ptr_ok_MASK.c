#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
union xfs_btree_ptr {int /*<<< orphan*/  s; int /*<<< orphan*/  l; } ;
struct xchk_btree {TYPE_1__* cur; int /*<<< orphan*/  sc; } ;
struct TYPE_4__ {int bc_flags; int bc_nlevels; } ;

/* Variables and functions */
 int XFS_BTREE_LONG_PTRS ; 
 int XFS_BTREE_ROOT_IN_INODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC5(
	struct xchk_btree	*bs,
	int			level,
	union xfs_btree_ptr	*ptr)
{
	bool			res;

	/* A btree rooted in an inode has no block pointer to the root. */
	if ((bs->cur->bc_flags & XFS_BTREE_ROOT_IN_INODE) &&
	    level == bs->cur->bc_nlevels)
		return true;

	/* Otherwise, check the pointers. */
	if (bs->cur->bc_flags & XFS_BTREE_LONG_PTRS)
		res = FUNC3(bs->cur, FUNC1(ptr->l), level);
	else
		res = FUNC4(bs->cur, FUNC0(ptr->s), level);
	if (!res)
		FUNC2(bs->sc, bs->cur, level);

	return res;
}