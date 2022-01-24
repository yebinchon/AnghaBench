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
struct TYPE_2__ {int /*<<< orphan*/ * threads; int /*<<< orphan*/ * cpus; } ;
struct evlist {TYPE_1__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct evlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct evlist*) ; 
 int /*<<< orphan*/  FUNC3 (struct evlist*) ; 
 int /*<<< orphan*/  FUNC4 (struct evlist*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct evlist *evlist)
{
	if (evlist == NULL)
		return;

	FUNC2(evlist);
	FUNC0(evlist);
	FUNC5(evlist->core.cpus);
	FUNC6(evlist->core.threads);
	evlist->core.cpus = NULL;
	evlist->core.threads = NULL;
	FUNC3(evlist);
	FUNC1(evlist);
	FUNC4(evlist);
}