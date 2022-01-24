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
struct pnfs_layout_hdr {int /*<<< orphan*/  plh_inode; int /*<<< orphan*/  plh_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  roc_rpcwaitq; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_LAYOUT_RETURN ; 
 int /*<<< orphan*/  NFS_LAYOUT_RETURN_LOCK ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pnfs_layout_hdr *lo)
{
	FUNC2(NFS_LAYOUT_RETURN, &lo->plh_flags);
	FUNC1(NFS_LAYOUT_RETURN_LOCK, &lo->plh_flags);
	FUNC4();
	FUNC5(&lo->plh_flags, NFS_LAYOUT_RETURN);
	FUNC3(&FUNC0(lo->plh_inode)->roc_rpcwaitq);
}