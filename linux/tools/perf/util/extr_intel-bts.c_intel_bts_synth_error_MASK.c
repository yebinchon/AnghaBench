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
union perf_event {int /*<<< orphan*/  auxtrace_error; } ;
typedef  int /*<<< orphan*/  u64 ;
struct intel_bts {int /*<<< orphan*/  session; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_BTS_ERR_NOINSN ; 
 int /*<<< orphan*/  PERF_AUXTRACE_ERROR_ITRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,union perf_event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct intel_bts *bts, int cpu, pid_t pid,
				 pid_t tid, u64 ip)
{
	union perf_event event;
	int err;

	FUNC0(&event.auxtrace_error, PERF_AUXTRACE_ERROR_ITRACE,
			     INTEL_BTS_ERR_NOINSN, cpu, pid, tid, ip,
			     "Failed to get instruction", 0);

	err = FUNC1(bts->session, &event, NULL);
	if (err)
		FUNC2("Intel BTS: failed to deliver error event, error %d\n",
		       err);

	return err;
}