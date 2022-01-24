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
struct ocfs2_slot_info {scalar_t__ si_extended; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocfs2_slot_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_slot_info*) ; 

__attribute__((used)) static void FUNC2(struct ocfs2_slot_info *si)
{
	/*
	 * The slot data will have been refreshed when ocfs2_super_lock
	 * was taken.
	 */
	if (si->si_extended)
		FUNC0(si);
	else
		FUNC1(si);
}