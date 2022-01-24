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

/* Variables and functions */
 int /*<<< orphan*/  FULLSTOP_DONTSTOP ; 
 int /*<<< orphan*/  fullstop ; 
 int /*<<< orphan*/  fullstop_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* torture_type ; 
 int verbose ; 

bool FUNC3(char *ttype, int v)
{
	FUNC0(&fullstop_mutex);
	if (torture_type != NULL) {
		FUNC2("torture_init_begin: Refusing %s init: %s running.\n",
			 ttype, torture_type);
		FUNC2("torture_init_begin: One torture test at a time!\n");
		FUNC1(&fullstop_mutex);
		return false;
	}
	torture_type = ttype;
	verbose = v;
	fullstop = FULLSTOP_DONTSTOP;
	return true;
}