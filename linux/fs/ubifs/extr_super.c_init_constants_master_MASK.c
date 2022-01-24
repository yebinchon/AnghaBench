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
struct TYPE_2__ {int /*<<< orphan*/  min_idx_lebs; } ;
struct ubifs_info {long long rp_size; int main_lebs; int jhead_cnt; long long leb_overhead; long long block_cnt; scalar_t__ leb_size; void* report_rp_size; TYPE_1__ bi; } ;

/* Variables and functions */
 int MIN_INDEX_LEBS ; 
 long long UBIFS_BLOCK_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*) ; 
 void* FUNC1 (struct ubifs_info*,long long) ; 

__attribute__((used)) static void FUNC2(struct ubifs_info *c)
{
	long long tmp64;

	c->bi.min_idx_lebs = FUNC0(c);
	c->report_rp_size = FUNC1(c, c->rp_size);

	/*
	 * Calculate total amount of FS blocks. This number is not used
	 * internally because it does not make much sense for UBIFS, but it is
	 * necessary to report something for the 'statfs()' call.
	 *
	 * Subtract the LEB reserved for GC, the LEB which is reserved for
	 * deletions, minimum LEBs for the index, and assume only one journal
	 * head is available.
	 */
	tmp64 = c->main_lebs - 1 - 1 - MIN_INDEX_LEBS - c->jhead_cnt + 1;
	tmp64 *= (long long)c->leb_size - c->leb_overhead;
	tmp64 = FUNC1(c, tmp64);
	c->block_cnt = tmp64 >> UBIFS_BLOCK_SHIFT;
}