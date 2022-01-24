#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  pag_ici_reclaim_lock; int /*<<< orphan*/  pag_state_lock; int /*<<< orphan*/  pagb_tree; scalar_t__ pagb_count; int /*<<< orphan*/  pagb_lock; int /*<<< orphan*/  pagb_wait; int /*<<< orphan*/  pag_ici_root; int /*<<< orphan*/  pag_ici_lock; TYPE_2__* pag_mount; scalar_t__ pag_agno; } ;
typedef  TYPE_1__ xfs_perag_t ;
struct TYPE_18__ {int /*<<< orphan*/  m_perag_tree; int /*<<< orphan*/  m_ag_prealloc_blocks; int /*<<< orphan*/  m_perag_lock; } ;
typedef  TYPE_2__ xfs_mount_t ;
typedef  scalar_t__ xfs_agnumber_t ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KM_MAYFAIL ; 
 scalar_t__ NULLAGNUMBER ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int FUNC17 (TYPE_1__*) ; 
 TYPE_1__* FUNC18 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 scalar_t__ FUNC21 (TYPE_2__*,scalar_t__) ; 

int
FUNC22(
	xfs_mount_t	*mp,
	xfs_agnumber_t	agcount,
	xfs_agnumber_t	*maxagi)
{
	xfs_agnumber_t	index;
	xfs_agnumber_t	first_initialised = NULLAGNUMBER;
	xfs_perag_t	*pag;
	int		error = -ENOMEM;

	/*
	 * Walk the current per-ag tree so we don't try to initialise AGs
	 * that already exist (growfs case). Allocate and insert all the
	 * AGs we don't find ready for initialisation.
	 */
	for (index = 0; index < agcount; index++) {
		pag = FUNC18(mp, index);
		if (pag) {
			FUNC19(pag);
			continue;
		}

		pag = FUNC4(sizeof(*pag), KM_MAYFAIL);
		if (!pag)
			goto out_unwind_new_pags;
		pag->pag_agno = index;
		pag->pag_mount = mp;
		FUNC12(&pag->pag_ici_lock);
		FUNC6(&pag->pag_ici_reclaim_lock);
		FUNC0(&pag->pag_ici_root, GFP_ATOMIC);
		if (FUNC15(pag))
			goto out_free_pag;
		FUNC2(&pag->pagb_wait);
		FUNC12(&pag->pagb_lock);
		pag->pagb_count = 0;
		pag->pagb_tree = RB_ROOT;

		if (FUNC9(GFP_NOFS))
			goto out_hash_destroy;

		FUNC11(&mp->m_perag_lock);
		if (FUNC8(&mp->m_perag_tree, index, pag)) {
			FUNC1(1);
			FUNC13(&mp->m_perag_lock);
			FUNC10();
			error = -EEXIST;
			goto out_hash_destroy;
		}
		FUNC13(&mp->m_perag_lock);
		FUNC10();
		/* first new pag is fully initialized */
		if (first_initialised == NULLAGNUMBER)
			first_initialised = index;
		error = FUNC17(pag);
		if (error)
			goto out_hash_destroy;
		FUNC12(&pag->pag_state_lock);
	}

	index = FUNC21(mp, agcount);

	if (maxagi)
		*maxagi = index;

	mp->m_ag_prealloc_blocks = FUNC20(mp);
	return 0;

out_hash_destroy:
	FUNC14(pag);
out_free_pag:
	FUNC5(&pag->pag_ici_reclaim_lock);
	FUNC3(pag);
out_unwind_new_pags:
	/* unwind any prior newly initialized pags */
	for (index = first_initialised; index < agcount; index++) {
		pag = FUNC7(&mp->m_perag_tree, index);
		if (!pag)
			break;
		FUNC14(pag);
		FUNC16(pag);
		FUNC5(&pag->pag_ici_reclaim_lock);
		FUNC3(pag);
	}
	return error;
}