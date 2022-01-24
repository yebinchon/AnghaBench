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
typedef  int /*<<< orphan*/  u64 ;
struct compute_stats {int /*<<< orphan*/  load; int /*<<< orphan*/  lcl_hitm; int /*<<< orphan*/  rmt_hitm; } ;
struct c2c_stats {scalar_t__ load; scalar_t__ lcl_hitm; scalar_t__ rmt_hitm; } ;
struct c2c_hist_entry {struct compute_stats cstats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct c2c_hist_entry *c2c_he,
			  struct c2c_stats *stats,
			  u64 weight)
{
	struct compute_stats *cstats = &c2c_he->cstats;

	if (stats->rmt_hitm)
		FUNC0(&cstats->rmt_hitm, weight);
	else if (stats->lcl_hitm)
		FUNC0(&cstats->lcl_hitm, weight);
	else if (stats->load)
		FUNC0(&cstats->load, weight);
}