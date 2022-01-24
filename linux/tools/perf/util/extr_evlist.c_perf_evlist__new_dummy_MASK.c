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
struct evlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evlist*) ; 
 struct evlist* FUNC1 () ; 
 scalar_t__ FUNC2 (struct evlist*) ; 

struct evlist *FUNC3(void)
{
	struct evlist *evlist = FUNC1();

	if (evlist && FUNC2(evlist)) {
		FUNC0(evlist);
		evlist = NULL;
	}

	return evlist;
}