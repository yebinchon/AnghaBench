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
struct aa_policy {int /*<<< orphan*/  hname; int /*<<< orphan*/  list; int /*<<< orphan*/  profiles; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct aa_policy *policy)
{
	FUNC0(FUNC2(&policy->profiles));
	FUNC0(FUNC2(&policy->list));

	/* don't free name as its a subset of hname */
	FUNC1(policy->hname);
}