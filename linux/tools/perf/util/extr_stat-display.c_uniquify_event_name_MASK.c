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
struct evsel {int uniquified_name; char* pmu_name; char* name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct evsel *counter)
{
	char *new_name;
	char *config;

	if (counter->uniquified_name ||
	    !counter->pmu_name || !FUNC4(counter->name, counter->pmu_name,
					   FUNC3(counter->pmu_name)))
		return;

	config = FUNC2(counter->name, '/');
	if (config) {
		if (FUNC0(&new_name,
			     "%s%s", counter->pmu_name, config) > 0) {
			FUNC1(counter->name);
			counter->name = new_name;
		}
	} else {
		if (FUNC0(&new_name,
			     "%s [%s]", counter->name, counter->pmu_name) > 0) {
			FUNC1(counter->name);
			counter->name = new_name;
		}
	}

	counter->uniquified_name = true;
}