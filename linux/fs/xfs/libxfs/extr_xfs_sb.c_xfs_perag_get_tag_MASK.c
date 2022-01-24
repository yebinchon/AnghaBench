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
typedef  int /*<<< orphan*/  xfs_agnumber_t ;
struct xfs_perag {int /*<<< orphan*/  pag_agno; int /*<<< orphan*/  pag_ref; } ;
struct xfs_mount {int /*<<< orphan*/  m_perag_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  _RET_IP_ ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

struct xfs_perag *
FUNC5(
	struct xfs_mount	*mp,
	xfs_agnumber_t		first,
	int			tag)
{
	struct xfs_perag	*pag;
	int			found;
	int			ref;

	FUNC2();
	found = FUNC1(&mp->m_perag_tree,
					(void **)&pag, first, 1, tag);
	if (found <= 0) {
		FUNC3();
		return NULL;
	}
	ref = FUNC0(&pag->pag_ref);
	FUNC3();
	FUNC4(mp, pag->pag_agno, ref, _RET_IP_);
	return pag;
}