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
struct pnfs_layout_segment {int /*<<< orphan*/  pls_flags; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_LSEG_LAYOUTCOMMIT ; 
 int /*<<< orphan*/  NFS_LSEG_LAYOUTRETURN ; 
 int /*<<< orphan*/  NFS_LSEG_ROC ; 
 int /*<<< orphan*/  NFS_LSEG_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pnfs_layout_segment*,struct list_head*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct pnfs_layout_segment *lseg,
		struct list_head *free_me)
{
	FUNC0(NFS_LSEG_ROC, &lseg->pls_flags);
	FUNC0(NFS_LSEG_LAYOUTRETURN, &lseg->pls_flags);
	if (FUNC2(NFS_LSEG_VALID, &lseg->pls_flags))
		FUNC1(lseg, free_me);
	if (FUNC2(NFS_LSEG_LAYOUTCOMMIT, &lseg->pls_flags))
		FUNC1(lseg, free_me);
}