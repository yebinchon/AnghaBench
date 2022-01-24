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
struct xfs_iext_cursor {scalar_t__ pos; int /*<<< orphan*/  leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_iext_cursor*) ; 
 scalar_t__ FUNC1 (struct xfs_ifork*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC3(struct xfs_ifork *ifp,
		struct xfs_iext_cursor *cur)
{
	if (!cur->leaf)
		return false;
	if (cur->pos < 0 || cur->pos >= FUNC1(ifp))
		return false;
	if (FUNC2(FUNC0(cur)))
		return false;
	return true;
}