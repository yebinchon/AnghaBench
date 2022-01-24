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
struct expect_stats {int /*<<< orphan*/ * info; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(const struct objagg_stats *stats,
				    const struct expect_stats *expect_stats,
				    int pos)
{
	int i;
	int err;

	for (i = pos - 1; i >= 0; i--) {
		err = FUNC1(&stats->stats_info[i],
					      &expect_stats->info[pos], NULL);
		if (err)
			break;
		err = FUNC0(&stats->stats_info[i],
						&expect_stats->info[pos], NULL);
		if (!err)
			return 0;
	}
	for (i = pos + 1; i < stats->stats_info_count; i++) {
		err = FUNC1(&stats->stats_info[i],
					      &expect_stats->info[pos], NULL);
		if (err)
			break;
		err = FUNC0(&stats->stats_info[i],
						&expect_stats->info[pos], NULL);
		if (!err)
			return 0;
	}
	return -EINVAL;
}