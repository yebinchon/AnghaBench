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
struct sort_dimension {int taken; } ;
struct perf_hpp_list {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sort_dimension*,struct perf_hpp_list*) ; 

__attribute__((used)) static int FUNC1(struct perf_hpp_list *list,
					struct sort_dimension *sd)
{
	if (sd->taken)
		return 0;

	if (FUNC0(sd, list) < 0)
		return -1;

	sd->taken = 1;
	return 0;
}