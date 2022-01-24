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
struct netns_ipvs {int /*<<< orphan*/  est_lock; int /*<<< orphan*/  est_list; } ;
struct ip_vs_estimator {int /*<<< orphan*/  list; } ;
struct ip_vs_stats {struct ip_vs_estimator est; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct netns_ipvs *ipvs, struct ip_vs_stats *stats)
{
	struct ip_vs_estimator *est = &stats->est;

	FUNC0(&est->list);

	FUNC2(&ipvs->est_lock);
	FUNC1(&est->list, &ipvs->est_list);
	FUNC3(&ipvs->est_lock);
}