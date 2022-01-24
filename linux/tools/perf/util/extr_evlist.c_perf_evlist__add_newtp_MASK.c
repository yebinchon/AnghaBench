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
struct evsel {void* handler; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC1 (struct evlist*,struct evsel*) ; 
 struct evsel* FUNC2 (char const*,char const*) ; 

int FUNC3(struct evlist *evlist,
			   const char *sys, const char *name, void *handler)
{
	struct evsel *evsel = FUNC2(sys, name);

	if (FUNC0(evsel))
		return -1;

	evsel->handler = handler;
	FUNC1(evlist, evsel);
	return 0;
}