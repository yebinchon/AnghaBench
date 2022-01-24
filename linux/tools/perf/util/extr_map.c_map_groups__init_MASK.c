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
struct map_groups {int /*<<< orphan*/  refcnt; struct machine* machine; int /*<<< orphan*/  maps; } ;
struct machine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

void FUNC2(struct map_groups *mg, struct machine *machine)
{
	FUNC0(&mg->maps);
	mg->machine = machine;
	FUNC1(&mg->refcnt, 1);
}