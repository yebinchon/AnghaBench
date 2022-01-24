#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct aa_ns {TYPE_1__* unconfined; int /*<<< orphan*/  parent; int /*<<< orphan*/  labels; int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_ns*) ; 

void FUNC5(struct aa_ns *ns)
{
	if (!ns)
		return;

	FUNC2(&ns->base);
	FUNC1(&ns->labels);
	FUNC3(ns->parent);

	ns->unconfined->ns = NULL;
	FUNC0(ns->unconfined);
	FUNC4(ns);
}