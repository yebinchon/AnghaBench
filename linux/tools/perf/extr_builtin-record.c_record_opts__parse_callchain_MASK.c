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
struct record_opts {int sample_address; } ;
struct callchain_param {int enabled; scalar_t__ record_mode; } ;

/* Variables and functions */
 scalar_t__ CALLCHAIN_DWARF ; 
 scalar_t__ CALLCHAIN_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct callchain_param*) ; 
 int FUNC1 (char const*,struct callchain_param*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct record_opts *record,
				 struct callchain_param *callchain,
				 const char *arg, bool unset)
{
	int ret;
	callchain->enabled = !unset;

	/* --no-call-graph */
	if (unset) {
		callchain->record_mode = CALLCHAIN_NONE;
		FUNC2("callchain: disabled\n");
		return 0;
	}

	ret = FUNC1(arg, callchain);
	if (!ret) {
		/* Enable data address sampling for DWARF unwind. */
		if (callchain->record_mode == CALLCHAIN_DWARF)
			record->sample_address = true;
		FUNC0(callchain);
	}

	return ret;
}