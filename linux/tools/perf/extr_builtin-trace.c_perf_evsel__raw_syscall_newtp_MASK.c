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

/* Variables and functions */
 scalar_t__ FUNC0 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC1 (struct evsel*) ; 
 scalar_t__ FUNC2 (struct evsel*,void*) ; 
 struct evsel* FUNC3 (char*,char const*) ; 

__attribute__((used)) static struct evsel *FUNC4(const char *direction, void *handler)
{
	struct evsel *evsel = FUNC3("raw_syscalls", direction);

	/* older kernel (e.g., RHEL6) use syscalls:{enter,exit} */
	if (FUNC0(evsel))
		evsel = FUNC3("syscalls", direction);

	if (FUNC0(evsel))
		return NULL;

	if (FUNC2(evsel, handler))
		goto out_delete;

	return evsel;

out_delete:
	FUNC1(evsel);
	return NULL;
}