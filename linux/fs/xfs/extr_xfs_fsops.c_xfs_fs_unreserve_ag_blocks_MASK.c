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
typedef  scalar_t__ xfs_agnumber_t ;
struct xfs_perag {int dummy; } ;
struct TYPE_2__ {scalar_t__ sb_agcount; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;

/* Variables and functions */
 int FUNC0 (struct xfs_perag*) ; 
 struct xfs_perag* FUNC1 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_perag*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,char*,int) ; 

int
FUNC4(
	struct xfs_mount	*mp)
{
	xfs_agnumber_t		agno;
	struct xfs_perag	*pag;
	int			error = 0;
	int			err2;

	for (agno = 0; agno < mp->m_sb.sb_agcount; agno++) {
		pag = FUNC1(mp, agno);
		err2 = FUNC0(pag);
		FUNC2(pag);
		if (err2 && !error)
			error = err2;
	}

	if (error)
		FUNC3(mp,
	"Error %d freeing per-AG metadata reserve pool.", error);

	return error;
}