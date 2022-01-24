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
struct xfs_ifork {int dummy; } ;
struct xfs_iext_leaf {int /*<<< orphan*/ * recs; } ;

/* Variables and functions */
 int FUNC0 (struct xfs_ifork*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(
	struct xfs_ifork	*ifp,
	struct xfs_iext_leaf	*leaf,
	int			start)
{
	int			i;

	for (i = start; i < FUNC0(ifp); i++) {
		if (FUNC1(&leaf->recs[i]))
			break;
	}

	return i;
}