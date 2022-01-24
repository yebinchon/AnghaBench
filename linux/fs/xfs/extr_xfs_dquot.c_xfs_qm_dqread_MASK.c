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
struct xfs_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_buf*) ; 
 struct xfs_dquot* FUNC5 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xfs_mount*,struct xfs_dquot*,struct xfs_buf**) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_dquot*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_dquot*) ; 
 int FUNC9 (struct xfs_mount*,struct xfs_dquot*,struct xfs_buf**) ; 

__attribute__((used)) static int
FUNC10(
	struct xfs_mount	*mp,
	xfs_dqid_t		id,
	uint			type,
	bool			can_alloc,
	struct xfs_dquot	**dqpp)
{
	struct xfs_dquot	*dqp;
	struct xfs_buf		*bp;
	int			error;

	dqp = FUNC5(mp, id, type);
	FUNC1(dqp);

	/* Try to read the buffer, allocating if necessary. */
	error = FUNC6(mp, dqp, &bp);
	if (error == -ENOENT && can_alloc)
		error = FUNC9(mp, dqp, &bp);
	if (error)
		goto err;

	/*
	 * At this point we should have a clean locked buffer.  Copy the data
	 * to the incore dquot and release the buffer since the incore dquot
	 * has its own locking protocol so we needn't tie up the buffer any
	 * further.
	 */
	FUNC0(FUNC3(bp));
	FUNC7(dqp, bp);

	FUNC4(bp);
	*dqpp = dqp;
	return error;

err:
	FUNC2(dqp);
	FUNC8(dqp);
	*dqpp = NULL;
	return error;
}