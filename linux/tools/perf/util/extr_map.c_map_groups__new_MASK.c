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
struct map_groups {int dummy; } ;
struct machine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct map_groups*,struct machine*) ; 
 struct map_groups* FUNC1 (int) ; 

struct map_groups *FUNC2(struct machine *machine)
{
	struct map_groups *mg = FUNC1(sizeof(*mg));

	if (mg != NULL)
		FUNC0(mg, machine);

	return mg;
}