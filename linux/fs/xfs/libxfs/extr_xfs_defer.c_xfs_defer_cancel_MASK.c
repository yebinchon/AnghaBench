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
struct xfs_trans {int /*<<< orphan*/  t_dfops; struct xfs_mount* t_mountp; } ;
struct xfs_mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,int /*<<< orphan*/ *) ; 

void
FUNC2(
	struct xfs_trans	*tp)
{
	struct xfs_mount	*mp = tp->t_mountp;

	FUNC0(tp, _RET_IP_);
	FUNC1(mp, &tp->t_dfops);
}