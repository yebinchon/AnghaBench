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
struct xfs_perag {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_AG_RESV_METADATA ; 
 int /*<<< orphan*/  XFS_AG_RESV_RMAPBT ; 
 int FUNC0 (struct xfs_perag*,int /*<<< orphan*/ ) ; 

int
FUNC1(
	struct xfs_perag		*pag)
{
	int				error;
	int				err2;

	error = FUNC0(pag, XFS_AG_RESV_RMAPBT);
	err2 = FUNC0(pag, XFS_AG_RESV_METADATA);
	if (err2 && !error)
		error = err2;
	return error;
}