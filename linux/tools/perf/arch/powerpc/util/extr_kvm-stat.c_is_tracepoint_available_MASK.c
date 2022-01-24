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
struct parse_events_error {int /*<<< orphan*/ * str; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct evlist*,char const*,struct parse_events_error*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(const char *str, struct evlist *evlist)
{
	struct parse_events_error err;
	int ret;

	err.str = NULL;
	ret = FUNC0(evlist, str, &err);
	if (err.str)
		FUNC1("%s : %s\n", str, err.str);
	return ret;
}