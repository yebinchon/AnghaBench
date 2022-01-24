#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_agino_t ;
struct TYPE_3__ {struct xfs_btree_cur* fino_cur; struct xfs_btree_cur* ino_cur; } ;
struct xfs_scrub {TYPE_1__ sa; TYPE_2__* sm; } ;
struct xfs_inobt_rec_incore {scalar_t__ ir_freecount; } ;
struct xfs_btree_cur {int dummy; } ;
struct TYPE_4__ {scalar_t__ sm_type; } ;

/* Variables and functions */
 scalar_t__ XFS_SCRUB_TYPE_FINOBT ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_scrub*,struct xfs_btree_cur*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_scrub*,int*,struct xfs_btree_cur**) ; 
 int FUNC2 (struct xfs_btree_cur*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static inline void
FUNC3(
	struct xfs_scrub		*sc,
	struct xfs_inobt_rec_incore	*irec,
	xfs_agino_t			agino)
{
	struct xfs_btree_cur		**pcur;
	bool				has_irec;
	int				error;

	if (sc->sm->sm_type == XFS_SCRUB_TYPE_FINOBT)
		pcur = &sc->sa.ino_cur;
	else
		pcur = &sc->sa.fino_cur;
	if (!(*pcur))
		return;
	error = FUNC2(*pcur, agino, agino, &has_irec);
	if (!FUNC1(sc, &error, pcur))
		return;
	if (((irec->ir_freecount > 0 && !has_irec) ||
	     (irec->ir_freecount == 0 && has_irec)))
		FUNC0(sc, *pcur, 0);
}