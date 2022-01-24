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
struct ocfs2_alloc_reservation {unsigned int r_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int OCFS2_RESV_TYPES ; 

void FUNC1(struct ocfs2_alloc_reservation *resv,
			 unsigned int flags)
{
	FUNC0(flags & ~OCFS2_RESV_TYPES);

	resv->r_flags |= flags;
}