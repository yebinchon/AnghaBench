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
struct evsel {int forced_leader; } ;
struct evlist {int /*<<< orphan*/  nr_groups; } ;

/* Variables and functions */
 struct evsel* FUNC0 (struct evlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct evlist*) ; 

void FUNC2(struct evlist *evlist)
{
	if (!evlist->nr_groups) {
		struct evsel *leader = FUNC0(evlist);

		FUNC1(evlist);
		leader->forced_leader = true;
	}
}