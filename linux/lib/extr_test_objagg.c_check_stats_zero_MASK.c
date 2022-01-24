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
struct objagg_stats {scalar_t__ stats_info_count; } ;
struct objagg {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct objagg_stats const*) ; 
 int FUNC1 (struct objagg_stats const*) ; 
 struct objagg_stats* FUNC2 (struct objagg*) ; 
 int /*<<< orphan*/  FUNC3 (struct objagg_stats const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct objagg *objagg)
{
	const struct objagg_stats *stats;
	int err = 0;

	stats = FUNC2(objagg);
	if (FUNC0(stats))
		return FUNC1(stats);

	if (stats->stats_info_count != 0) {
		FUNC4("Stats: Object count is not zero while it should be\n");
		err = -EINVAL;
	}

	FUNC3(stats);
	return err;
}