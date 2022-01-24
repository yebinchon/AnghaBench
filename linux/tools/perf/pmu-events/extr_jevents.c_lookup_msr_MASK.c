#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct msrmap {scalar_t__ num; } ;
struct TYPE_6__ {int start; } ;
typedef  TYPE_1__ jsmntok_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (char*,TYPE_1__*,scalar_t__) ; 
 struct msrmap* msrmap ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  prog ; 

__attribute__((used)) static struct msrmap *FUNC4(char *map, jsmntok_t *val)
{
	jsmntok_t newval = *val;
	static bool warned;
	int i;

	FUNC0(map, &newval);
	for (i = 0; msrmap[i].num; i++)
		if (FUNC2(map, &newval, msrmap[i].num))
			return &msrmap[i];
	if (!warned) {
		warned = true;
		FUNC3("%s: Unknown MSR in event file %.*s\n", prog,
			FUNC1(val), map + val->start);
	}
	return NULL;
}