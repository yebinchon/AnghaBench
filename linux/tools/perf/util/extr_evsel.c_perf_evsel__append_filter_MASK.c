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
struct evsel {char* filter; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct evsel*,char const*) ; 

__attribute__((used)) static int FUNC3(struct evsel *evsel,
				     const char *fmt, const char *filter)
{
	char *new_filter;

	if (evsel->filter == NULL)
		return FUNC2(evsel, filter);

	if (FUNC0(&new_filter, fmt, evsel->filter, filter) > 0) {
		FUNC1(evsel->filter);
		evsel->filter = new_filter;
		return 0;
	}

	return -1;
}