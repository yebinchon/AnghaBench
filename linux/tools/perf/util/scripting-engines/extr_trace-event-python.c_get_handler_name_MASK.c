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
 int /*<<< orphan*/  FUNC0 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static void FUNC3(char *str, size_t size,
			     struct evsel *evsel)
{
	char *p = str;

	FUNC1(str, size, "stat__%s", FUNC0(evsel));

	while ((p = FUNC2(p, ':'))) {
		*p = '_';
		p++;
	}
}