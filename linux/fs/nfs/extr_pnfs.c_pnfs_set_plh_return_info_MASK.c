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
typedef  scalar_t__ u32 ;
struct pnfs_layout_hdr {scalar_t__ plh_return_iomode; scalar_t__ plh_return_seq; int /*<<< orphan*/  plh_flags; } ;
typedef  enum pnfs_iomode { ____Placeholder_pnfs_iomode } pnfs_iomode ;

/* Variables and functions */
 int IOMODE_ANY ; 
 int /*<<< orphan*/  NFS_LAYOUT_RETURN_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct pnfs_layout_hdr *lo, enum pnfs_iomode iomode,
			 u32 seq)
{
	if (lo->plh_return_iomode != 0 && lo->plh_return_iomode != iomode)
		iomode = IOMODE_ANY;
	lo->plh_return_iomode = iomode;
	FUNC1(NFS_LAYOUT_RETURN_REQUESTED, &lo->plh_flags);
	if (seq != 0) {
		FUNC0(lo->plh_return_seq != 0 && lo->plh_return_seq != seq);
		lo->plh_return_seq = seq;
	}
}