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
struct xfs_ibulk {scalar_t__ ocount; int /*<<< orphan*/  icount; int /*<<< orphan*/  flags; int /*<<< orphan*/  startino; int /*<<< orphan*/  mp; } ;
struct xfs_bulkstat {int dummy; } ;
struct xfs_bstat_chunk {int /*<<< orphan*/  buf; struct xfs_ibulk* breq; int /*<<< orphan*/  formatter; } ;
typedef  int /*<<< orphan*/  bulkstat_one_fmt_pf ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  KM_MAYFAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_bulkstat_iwalk ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_bstat_chunk*) ; 

int
FUNC4(
	struct xfs_ibulk	*breq,
	bulkstat_one_fmt_pf	formatter)
{
	struct xfs_bstat_chunk	bc = {
		.formatter	= formatter,
		.breq		= breq,
	};
	int			error;

	if (FUNC2(breq->mp, breq->startino))
		return 0;

	bc.buf = FUNC1(sizeof(struct xfs_bulkstat),
			KM_MAYFAIL);
	if (!bc.buf)
		return -ENOMEM;

	error = FUNC3(breq->mp, NULL, breq->startino, breq->flags,
			xfs_bulkstat_iwalk, breq->icount, &bc);

	FUNC0(bc.buf);

	/*
	 * We found some inodes, so clear the error status and return them.
	 * The lastino pointer will point directly at the inode that triggered
	 * any error that occurred, so on the next call the error will be
	 * triggered again and propagated to userspace as there will be no
	 * formatted inodes in the buffer.
	 */
	if (breq->ocount > 0)
		error = 0;

	return error;
}