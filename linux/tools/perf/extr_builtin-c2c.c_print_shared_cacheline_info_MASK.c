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
struct c2c_stats {int lcl_hitm; int rmt_hitm; int load; int ld_fbhit; int ld_l1hit; int ld_l2hit; int ld_llchit; int locks; int store; int st_l1hit; } ;
struct TYPE_2__ {int shared_clines; struct c2c_stats hitm_stats; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__ c2c ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void FUNC1(FILE *out)
{
	struct c2c_stats *stats = &c2c.hitm_stats;
	int hitm_cnt = stats->lcl_hitm + stats->rmt_hitm;

	FUNC0(out, "=================================================\n");
	FUNC0(out, "    Global Shared Cache Line Event Information   \n");
	FUNC0(out, "=================================================\n");
	FUNC0(out, "  Total Shared Cache Lines          : %10d\n", c2c.shared_clines);
	FUNC0(out, "  Load HITs on shared lines         : %10d\n", stats->load);
	FUNC0(out, "  Fill Buffer Hits on shared lines  : %10d\n", stats->ld_fbhit);
	FUNC0(out, "  L1D hits on shared lines          : %10d\n", stats->ld_l1hit);
	FUNC0(out, "  L2D hits on shared lines          : %10d\n", stats->ld_l2hit);
	FUNC0(out, "  LLC hits on shared lines          : %10d\n", stats->ld_llchit + stats->lcl_hitm);
	FUNC0(out, "  Locked Access on shared lines     : %10d\n", stats->locks);
	FUNC0(out, "  Store HITs on shared lines        : %10d\n", stats->store);
	FUNC0(out, "  Store L1D hits on shared lines    : %10d\n", stats->st_l1hit);
	FUNC0(out, "  Total Merged records              : %10d\n", hitm_cnt + stats->store);
}