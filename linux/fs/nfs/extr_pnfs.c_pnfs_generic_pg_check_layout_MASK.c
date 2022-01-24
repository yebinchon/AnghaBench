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
struct nfs_pageio_descriptor {TYPE_1__* pg_lseg; } ;
struct TYPE_2__ {int /*<<< orphan*/  pls_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_LSEG_VALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(struct nfs_pageio_descriptor *pgio)
{
	if (pgio->pg_lseg == NULL ||
	    FUNC1(NFS_LSEG_VALID, &pgio->pg_lseg->pls_flags))
		return;
	FUNC0(pgio->pg_lseg);
	pgio->pg_lseg = NULL;
}