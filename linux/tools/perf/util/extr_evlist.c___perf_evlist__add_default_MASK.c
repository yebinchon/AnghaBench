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
struct evsel {int dummy; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct evlist*,struct evsel*) ; 
 struct evsel* FUNC1 (int) ; 

int FUNC2(struct evlist *evlist, bool precise)
{
	struct evsel *evsel = FUNC1(precise);

	if (evsel == NULL)
		return -ENOMEM;

	FUNC0(evlist, evsel);
	return 0;
}