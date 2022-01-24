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
struct TYPE_2__ {scalar_t__ nr_entries; } ;
struct evlist {TYPE_1__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (struct evlist*) ; 

__attribute__((used)) static int FUNC3(struct evlist *evlist)
{
	FUNC0("wrong events count",
			FUNC1() == evlist->core.nr_entries);

	return FUNC2(evlist);
}