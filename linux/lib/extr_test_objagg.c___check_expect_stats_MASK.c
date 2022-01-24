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
struct objagg_stats {int stats_info_count; int /*<<< orphan*/ * stats_info; } ;
struct expect_stats {int info_count; int /*<<< orphan*/ * info; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 int FUNC1 (struct objagg_stats const*,struct expect_stats const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static int FUNC3(const struct objagg_stats *stats,
				const struct expect_stats *expect_stats,
				const char **errmsg)
{
	int i;
	int err;

	if (stats->stats_info_count != expect_stats->info_count) {
		*errmsg = "Unexpected object count";
		return -EINVAL;
	}

	for (i = 0; i < stats->stats_info_count; i++) {
		err = FUNC2(&stats->stats_info[i],
					      &expect_stats->info[i], errmsg);
		if (err)
			return err;
		err = FUNC0(&stats->stats_info[i],
						&expect_stats->info[i], errmsg);
		if (err) {
			/* It is possible that one of the neighbor stats with
			 * same numbers have the correct key id, so check it
			 */
			err = FUNC1(stats, expect_stats, i);
			if (err)
				return err;
		}
	}
	return 0;
}