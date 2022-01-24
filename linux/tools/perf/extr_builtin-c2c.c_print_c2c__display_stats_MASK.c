#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct c2c_stats {int lcl_dram; int rmt_dram; int rmt_hit; int rmt_hitm; double nr_entries; double locks; double load; double ld_uncache; double ld_io; double ld_miss; double ld_noadrs; double ld_fbhit; double ld_l1hit; double ld_l2hit; double ld_llchit; double lcl_hitm; double ld_excl; double ld_shared; double store; double st_uncache; double st_noadrs; double st_l1hit; double st_l1miss; double nomap; double noparse; } ;
struct TYPE_3__ {struct c2c_stats stats; } ;
struct TYPE_4__ {TYPE_1__ hists; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_2__ c2c ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void FUNC1(FILE *out)
{
	int llc_misses;
	struct c2c_stats *stats = &c2c.hists.stats;

	llc_misses = stats->lcl_dram +
		     stats->rmt_dram +
		     stats->rmt_hit +
		     stats->rmt_hitm;

	FUNC0(out, "=================================================\n");
	FUNC0(out, "            Trace Event Information              \n");
	FUNC0(out, "=================================================\n");
	FUNC0(out, "  Total records                     : %10d\n", stats->nr_entries);
	FUNC0(out, "  Locked Load/Store Operations      : %10d\n", stats->locks);
	FUNC0(out, "  Load Operations                   : %10d\n", stats->load);
	FUNC0(out, "  Loads - uncacheable               : %10d\n", stats->ld_uncache);
	FUNC0(out, "  Loads - IO                        : %10d\n", stats->ld_io);
	FUNC0(out, "  Loads - Miss                      : %10d\n", stats->ld_miss);
	FUNC0(out, "  Loads - no mapping                : %10d\n", stats->ld_noadrs);
	FUNC0(out, "  Load Fill Buffer Hit              : %10d\n", stats->ld_fbhit);
	FUNC0(out, "  Load L1D hit                      : %10d\n", stats->ld_l1hit);
	FUNC0(out, "  Load L2D hit                      : %10d\n", stats->ld_l2hit);
	FUNC0(out, "  Load LLC hit                      : %10d\n", stats->ld_llchit + stats->lcl_hitm);
	FUNC0(out, "  Load Local HITM                   : %10d\n", stats->lcl_hitm);
	FUNC0(out, "  Load Remote HITM                  : %10d\n", stats->rmt_hitm);
	FUNC0(out, "  Load Remote HIT                   : %10d\n", stats->rmt_hit);
	FUNC0(out, "  Load Local DRAM                   : %10d\n", stats->lcl_dram);
	FUNC0(out, "  Load Remote DRAM                  : %10d\n", stats->rmt_dram);
	FUNC0(out, "  Load MESI State Exclusive         : %10d\n", stats->ld_excl);
	FUNC0(out, "  Load MESI State Shared            : %10d\n", stats->ld_shared);
	FUNC0(out, "  Load LLC Misses                   : %10d\n", llc_misses);
	FUNC0(out, "  LLC Misses to Local DRAM          : %10.1f%%\n", ((double)stats->lcl_dram/(double)llc_misses) * 100.);
	FUNC0(out, "  LLC Misses to Remote DRAM         : %10.1f%%\n", ((double)stats->rmt_dram/(double)llc_misses) * 100.);
	FUNC0(out, "  LLC Misses to Remote cache (HIT)  : %10.1f%%\n", ((double)stats->rmt_hit /(double)llc_misses) * 100.);
	FUNC0(out, "  LLC Misses to Remote cache (HITM) : %10.1f%%\n", ((double)stats->rmt_hitm/(double)llc_misses) * 100.);
	FUNC0(out, "  Store Operations                  : %10d\n", stats->store);
	FUNC0(out, "  Store - uncacheable               : %10d\n", stats->st_uncache);
	FUNC0(out, "  Store - no mapping                : %10d\n", stats->st_noadrs);
	FUNC0(out, "  Store L1D Hit                     : %10d\n", stats->st_l1hit);
	FUNC0(out, "  Store L1D Miss                    : %10d\n", stats->st_l1miss);
	FUNC0(out, "  No Page Map Rejects               : %10d\n", stats->nomap);
	FUNC0(out, "  Unable to parse data source       : %10d\n", stats->noparse);
}