#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct perf_session {int /*<<< orphan*/  evlist; int /*<<< orphan*/  header; } ;
struct perf_event_attr {int sample_type; } ;
struct TYPE_2__ {struct perf_event_attr attr; } ;
struct evsel {TYPE_1__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR ; 
 int /*<<< orphan*/  BRSTACKINSN ; 
 int /*<<< orphan*/  CPU ; 
 int /*<<< orphan*/  DATA_SRC ; 
 int /*<<< orphan*/  DSO ; 
 int EINVAL ; 
 int /*<<< orphan*/  HEADER_AUXTRACE ; 
 int /*<<< orphan*/  HEADER_STAT ; 
 int /*<<< orphan*/  IP ; 
 int /*<<< orphan*/  IREGS ; 
 int /*<<< orphan*/  PERF_OUTPUT_ADDR ; 
 int /*<<< orphan*/  PERF_OUTPUT_CPU ; 
 int PERF_OUTPUT_DATA_SRC ; 
 int PERF_OUTPUT_IP ; 
 int PERF_OUTPUT_IREGS ; 
 int PERF_OUTPUT_PHYS_ADDR ; 
 int PERF_OUTPUT_PID ; 
 int PERF_OUTPUT_TID ; 
 int PERF_OUTPUT_TIME ; 
 int PERF_OUTPUT_UREGS ; 
 int PERF_OUTPUT_WEIGHT ; 
 int PERF_SAMPLE_ADDR ; 
 int PERF_SAMPLE_BRANCH_ANY ; 
 int PERF_SAMPLE_CPU ; 
 int PERF_SAMPLE_DATA_SRC ; 
 int PERF_SAMPLE_IP ; 
 int PERF_SAMPLE_PHYS_ADDR ; 
 int PERF_SAMPLE_REGS_INTR ; 
 int PERF_SAMPLE_REGS_USER ; 
 int PERF_SAMPLE_TID ; 
 int PERF_SAMPLE_TIME ; 
 int PERF_SAMPLE_WEIGHT ; 
 int /*<<< orphan*/  PHYS_ADDR ; 
 int /*<<< orphan*/  PID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCCODE ; 
 int /*<<< orphan*/  SRCLINE ; 
 int /*<<< orphan*/  SYM ; 
 int /*<<< orphan*/  SYMOFFSET ; 
 int /*<<< orphan*/  TID ; 
 int /*<<< orphan*/  TIME ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  UREGS ; 
 int /*<<< orphan*/  WEIGHT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct evsel*,int,char*,int) ; 
 scalar_t__ FUNC3 (struct evsel*,int,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_session*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct evsel *evsel,
				  struct perf_session *session)
{
	struct perf_event_attr *attr = &evsel->core.attr;
	bool allow_user_set;

	if (FUNC4(&session->header, HEADER_STAT))
		return 0;

	allow_user_set = FUNC4(&session->header,
					       HEADER_AUXTRACE);

	if (FUNC0(TRACE) &&
		!FUNC5(session, "record -R"))
		return -EINVAL;

	if (FUNC0(IP)) {
		if (FUNC2(evsel, PERF_SAMPLE_IP, "IP",
					    PERF_OUTPUT_IP))
			return -EINVAL;
	}

	if (FUNC0(ADDR) &&
		FUNC3(evsel, PERF_SAMPLE_ADDR, "ADDR",
					   PERF_OUTPUT_ADDR, allow_user_set))
		return -EINVAL;

	if (FUNC0(DATA_SRC) &&
		FUNC2(evsel, PERF_SAMPLE_DATA_SRC, "DATA_SRC",
					PERF_OUTPUT_DATA_SRC))
		return -EINVAL;

	if (FUNC0(WEIGHT) &&
		FUNC2(evsel, PERF_SAMPLE_WEIGHT, "WEIGHT",
					PERF_OUTPUT_WEIGHT))
		return -EINVAL;

	if (FUNC0(SYM) &&
		!(evsel->core.attr.sample_type & (PERF_SAMPLE_IP|PERF_SAMPLE_ADDR))) {
		FUNC6("Display of symbols requested but neither sample IP nor "
			   "sample address\navailable. Hence, no addresses to convert "
		       "to symbols.\n");
		return -EINVAL;
	}
	if (FUNC0(SYMOFFSET) && !FUNC0(SYM)) {
		FUNC6("Display of offsets requested but symbol is not"
		       "selected.\n");
		return -EINVAL;
	}
	if (FUNC0(DSO) &&
		!(evsel->core.attr.sample_type & (PERF_SAMPLE_IP|PERF_SAMPLE_ADDR))) {
		FUNC6("Display of DSO requested but no address to convert.\n");
		return -EINVAL;
	}
	if ((FUNC0(SRCLINE) || FUNC0(SRCCODE)) && !FUNC0(IP)) {
		FUNC6("Display of source line number requested but sample IP is not\n"
		       "selected. Hence, no address to lookup the source line number.\n");
		return -EINVAL;
	}
	if (FUNC0(BRSTACKINSN) &&
	    !(FUNC1(session->evlist) &
	      PERF_SAMPLE_BRANCH_ANY)) {
		FUNC6("Display of branch stack assembler requested, but non all-branch filter set\n"
		       "Hint: run 'perf record -b ...'\n");
		return -EINVAL;
	}
	if ((FUNC0(PID) || FUNC0(TID)) &&
		FUNC2(evsel, PERF_SAMPLE_TID, "TID",
					PERF_OUTPUT_TID|PERF_OUTPUT_PID))
		return -EINVAL;

	if (FUNC0(TIME) &&
		FUNC2(evsel, PERF_SAMPLE_TIME, "TIME",
					PERF_OUTPUT_TIME))
		return -EINVAL;

	if (FUNC0(CPU) &&
		FUNC3(evsel, PERF_SAMPLE_CPU, "CPU",
					   PERF_OUTPUT_CPU, allow_user_set))
		return -EINVAL;

	if (FUNC0(IREGS) &&
		FUNC2(evsel, PERF_SAMPLE_REGS_INTR, "IREGS",
					PERF_OUTPUT_IREGS))
		return -EINVAL;

	if (FUNC0(UREGS) &&
		FUNC2(evsel, PERF_SAMPLE_REGS_USER, "UREGS",
					PERF_OUTPUT_UREGS))
		return -EINVAL;

	if (FUNC0(PHYS_ADDR) &&
		FUNC2(evsel, PERF_SAMPLE_PHYS_ADDR, "PHYS_ADDR",
					PERF_OUTPUT_PHYS_ADDR))
		return -EINVAL;

	return 0;
}