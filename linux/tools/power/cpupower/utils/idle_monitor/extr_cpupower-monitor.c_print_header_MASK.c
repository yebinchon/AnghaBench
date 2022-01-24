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
struct TYPE_3__ {char* name; } ;
typedef  TYPE_1__ cstate_t ;
struct TYPE_4__ {int hw_states_num; char* name; TYPE_1__* hw_states; } ;

/* Variables and functions */
 int MAX_COL_WIDTH ; 
 unsigned int avail_monitors ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 TYPE_2__** monitors ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

void FUNC3(int topology_depth)
{
	int unsigned mon;
	int state, need_len;
	cstate_t s;
	char buf[128] = "";

	FUNC0(buf, topology_depth * 5 - 1);
	FUNC1("%s|", buf);

	for (mon = 0; mon < avail_monitors; mon++) {
		need_len = monitors[mon]->hw_states_num * (MAX_COL_WIDTH + 1)
			- 1;
		if (mon != 0)
			FUNC1("||");
		FUNC2(buf, "%s", monitors[mon]->name);
		FUNC0(buf, need_len);
		FUNC1("%s", buf);
	}
	FUNC1("\n");

	if (topology_depth > 2)
		FUNC1(" PKG|");
	if (topology_depth > 1)
		FUNC1("CORE|");
	if (topology_depth > 0)
		FUNC1(" CPU|");

	for (mon = 0; mon < avail_monitors; mon++) {
		if (mon != 0)
			FUNC1("||");
		for (state = 0; state < monitors[mon]->hw_states_num; state++) {
			if (state != 0)
				FUNC1("|");
			s = monitors[mon]->hw_states[state];
			FUNC2(buf, "%s", s.name);
			FUNC0(buf, MAX_COL_WIDTH);
			FUNC1("%s", buf);
		}
		FUNC1(" ");
	}
	FUNC1("\n");
}