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
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_dquot*) ; 
 int FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_dquot**) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_dquot*) ; 

int
FUNC4(
	struct xfs_mount	*mp,
	xfs_dqid_t		id,
	uint			type,
	struct xfs_dquot	**dqpp)
{
	struct xfs_dquot	*dqp;
	int			error = 0;

	*dqpp = NULL;
	for (; !error; error = FUNC1(mp, type, &id)) {
		error = FUNC2(mp, id, type, false, &dqp);
		if (error == -ENOENT)
			continue;
		else if (error != 0)
			break;

		if (!FUNC0(dqp)) {
			*dqpp = dqp;
			return 0;
		}

		FUNC3(dqp);
	}

	return error;
}