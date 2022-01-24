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
struct super_block {int dummy; } ;
struct TYPE_2__ {int s_mount_opt; } ;

/* Variables and functions */
 int REISERFS_BARRIER_FLUSH ; 
 int REISERFS_BARRIER_NONE ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct super_block *s, unsigned long bits)
{
	int flush = (1 << REISERFS_BARRIER_FLUSH);
	int none = (1 << REISERFS_BARRIER_NONE);
	int all_barrier = flush | none;

	if (bits & all_barrier) {
		FUNC0(s)->s_mount_opt &= ~all_barrier;
		if (bits & flush) {
			FUNC0(s)->s_mount_opt |= flush;
			FUNC1("reiserfs: enabling write barrier flush mode\n");
		} else if (bits & none) {
			FUNC0(s)->s_mount_opt |= none;
			FUNC1("reiserfs: write barriers turned off\n");
		}
	}
}