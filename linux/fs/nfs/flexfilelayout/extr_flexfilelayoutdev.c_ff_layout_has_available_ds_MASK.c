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
struct TYPE_2__ {scalar_t__ iomode; } ;
struct pnfs_layout_segment {TYPE_1__ pls_range; } ;

/* Variables and functions */
 scalar_t__ IOMODE_READ ; 
 int FUNC0 (struct pnfs_layout_segment*) ; 
 int FUNC1 (struct pnfs_layout_segment*) ; 

__attribute__((used)) static bool FUNC2(struct pnfs_layout_segment *lseg)
{
	if (lseg->pls_range.iomode == IOMODE_READ)
		return  FUNC0(lseg);
	/* Note: RW layout needs all mirrors available */
	return FUNC1(lseg);
}