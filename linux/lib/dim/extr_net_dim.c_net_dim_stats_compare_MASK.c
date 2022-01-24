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
struct dim_stats {scalar_t__ bpms; scalar_t__ ppms; scalar_t__ epms; } ;

/* Variables and functions */
 int DIM_STATS_BETTER ; 
 int DIM_STATS_SAME ; 
 int DIM_STATS_WORSE ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct dim_stats *curr,
				 struct dim_stats *prev)
{
	if (!prev->bpms)
		return curr->bpms ? DIM_STATS_BETTER : DIM_STATS_SAME;

	if (FUNC0(curr->bpms, prev->bpms))
		return (curr->bpms > prev->bpms) ? DIM_STATS_BETTER :
						   DIM_STATS_WORSE;

	if (!prev->ppms)
		return curr->ppms ? DIM_STATS_BETTER :
				    DIM_STATS_SAME;

	if (FUNC0(curr->ppms, prev->ppms))
		return (curr->ppms > prev->ppms) ? DIM_STATS_BETTER :
						   DIM_STATS_WORSE;

	if (!prev->epms)
		return DIM_STATS_SAME;

	if (FUNC0(curr->epms, prev->epms))
		return (curr->epms < prev->epms) ? DIM_STATS_BETTER :
						   DIM_STATS_WORSE;

	return DIM_STATS_SAME;
}