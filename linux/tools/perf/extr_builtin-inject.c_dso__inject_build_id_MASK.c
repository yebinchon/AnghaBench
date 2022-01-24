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
typedef  int /*<<< orphan*/  u16 ;
struct perf_tool {int dummy; } ;
struct machine {int dummy; } ;
struct dso {int /*<<< orphan*/  long_name; scalar_t__ kernel; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_RECORD_MISC_KERNEL ; 
 int /*<<< orphan*/  PERF_RECORD_MISC_USER ; 
 scalar_t__ FUNC0 (struct dso*) ; 
 int /*<<< orphan*/  perf_event__repipe ; 
 int FUNC1 (struct perf_tool*,struct dso*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct machine*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dso *dso, struct perf_tool *tool,
				struct machine *machine)
{
	u16 misc = PERF_RECORD_MISC_USER;
	int err;

	if (FUNC0(dso) < 0) {
		FUNC2("no build_id found for %s\n", dso->long_name);
		return -1;
	}

	if (dso->kernel)
		misc = PERF_RECORD_MISC_KERNEL;

	err = FUNC1(tool, dso, misc, perf_event__repipe,
					      machine);
	if (err) {
		FUNC3("Can't synthesize build_id event for %s\n", dso->long_name);
		return -1;
	}

	return 0;
}