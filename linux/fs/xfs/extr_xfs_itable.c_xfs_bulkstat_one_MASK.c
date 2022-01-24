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
struct xfs_ibulk {int icount; int /*<<< orphan*/  startino; int /*<<< orphan*/  mp; } ;
struct xfs_bulkstat {int dummy; } ;
struct xfs_bstat_chunk {int /*<<< orphan*/  buf; struct xfs_ibulk* breq; int /*<<< orphan*/  formatter; } ;
typedef  int /*<<< orphan*/  bulkstat_one_fmt_pf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ECANCELED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KM_MAYFAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct xfs_bstat_chunk*) ; 

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

	FUNC0(breq->icount == 1);

	bc.buf = FUNC2(sizeof(struct xfs_bulkstat),
			KM_MAYFAIL);
	if (!bc.buf)
		return -ENOMEM;

	error = FUNC3(breq->mp, NULL, breq->startino, &bc);

	FUNC1(bc.buf);

	/*
	 * If we reported one inode to userspace then we abort because we hit
	 * the end of the buffer.  Don't leak that back to userspace.
	 */
	if (error == -ECANCELED)
		error = 0;

	return error;
}