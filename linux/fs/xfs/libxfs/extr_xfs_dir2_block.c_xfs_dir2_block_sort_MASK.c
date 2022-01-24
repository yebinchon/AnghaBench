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
struct TYPE_2__ {int /*<<< orphan*/  hashval; } ;
typedef  TYPE_1__ xfs_dir2_leaf_entry_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int					/* sort order */
FUNC1(
	const void			*a,	/* first leaf entry */
	const void			*b)	/* second leaf entry */
{
	const xfs_dir2_leaf_entry_t	*la;	/* first leaf entry */
	const xfs_dir2_leaf_entry_t	*lb;	/* second leaf entry */

	la = a;
	lb = b;
	return FUNC0(la->hashval) < FUNC0(lb->hashval) ? -1 :
		(FUNC0(la->hashval) > FUNC0(lb->hashval) ? 1 : 0);
}