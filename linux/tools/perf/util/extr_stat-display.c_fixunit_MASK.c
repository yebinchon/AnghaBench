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
 char* FUNC0 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static const char *FUNC3(char *buf, struct evsel *evsel,
			   const char *unit)
{
	if (!FUNC2(unit, "of all", 6)) {
		FUNC1(buf, 1024, "%s %s", FUNC0(evsel),
			 unit);
		return buf;
	}
	return unit;
}