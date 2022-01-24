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
typedef  int /*<<< orphan*/  xfs_ino_t ;
typedef  scalar_t__ xfs_agino_t ;
struct TYPE_2__ {int /*<<< orphan*/  fino_cur; } ;
struct xfs_scrub {TYPE_1__ sa; int /*<<< orphan*/  mp; int /*<<< orphan*/  sm; } ;
struct xfs_inobt_rec_incore {scalar_t__ ir_startino; int ir_free; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ XFS_INODES_PER_CHUNK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_LOOKUP_LE ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_scrub*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct xfs_inobt_rec_incore*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC7(
	struct xfs_scrub		*sc,
	xfs_ino_t			ino)
{
	struct xfs_inobt_rec_incore	rec;
	xfs_agino_t			agino;
	int				has_record;
	int				error;

	if (!sc->sa.fino_cur || FUNC4(sc->sm))
		return;

	agino = FUNC1(sc->mp, ino);

	/*
	 * Try to get the finobt record.  If we can't get it, then we're
	 * in good shape.
	 */
	error = FUNC6(sc->sa.fino_cur, agino, XFS_LOOKUP_LE,
			&has_record);
	if (!FUNC3(sc, &error, &sc->sa.fino_cur) ||
	    !has_record)
		return;

	error = FUNC5(sc->sa.fino_cur, &rec, &has_record);
	if (!FUNC3(sc, &error, &sc->sa.fino_cur) ||
	    !has_record)
		return;

	/*
	 * Otherwise, make sure this record either doesn't cover this inode,
	 * or that it does but it's marked present.
	 */
	if (rec.ir_startino > agino ||
	    rec.ir_startino + XFS_INODES_PER_CHUNK <= agino)
		return;

	if (rec.ir_free & FUNC0(agino - rec.ir_startino))
		FUNC2(sc, sc->sa.fino_cur, 0);
}