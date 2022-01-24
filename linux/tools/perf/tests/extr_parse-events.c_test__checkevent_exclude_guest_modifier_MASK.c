#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int exclude_guest; int /*<<< orphan*/  exclude_host; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct evsel* FUNC1 (struct evlist*) ; 
 int FUNC2 (struct evlist*) ; 

__attribute__((used)) static int FUNC3(struct evlist *evlist)
{
	struct evsel *evsel = FUNC1(evlist);

	FUNC0("wrong exclude guest", evsel->core.attr.exclude_guest);
	FUNC0("wrong exclude host", !evsel->core.attr.exclude_host);

	return FUNC2(evlist);
}