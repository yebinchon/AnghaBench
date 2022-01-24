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
typedef  int /*<<< orphan*/  xfs_dqid_t ;
typedef  int /*<<< orphan*/  uint ;
struct xfs_mount {int dummy; } ;
struct xfs_dquot {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_dquot**) ; 

int
FUNC2(
	struct xfs_mount	*mp,
	xfs_dqid_t		id,
	uint			type,
	struct xfs_dquot	**dqpp)
{
	int			error;

	error = FUNC0(mp, type);
	if (error)
		return error;

	return FUNC1(mp, id, type, 0, dqpp);
}