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
struct TYPE_2__ {int /*<<< orphan*/  env; } ;
struct perf_session {TYPE_1__ header; } ;
struct perf_mem {scalar_t__ phys_addr; int /*<<< orphan*/  cpu_bitmap; int /*<<< orphan*/  cpu_list; int /*<<< orphan*/  tool; int /*<<< orphan*/  force; } ;
struct perf_data {int /*<<< orphan*/  force; int /*<<< orphan*/  mode; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_session*) ; 
 int /*<<< orphan*/  PERF_DATA_MODE_READ ; 
 int FUNC1 (struct perf_session*) ; 
 int /*<<< orphan*/  input_name ; 
 int FUNC2 (struct perf_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_session*) ; 
 struct perf_session* FUNC4 (struct perf_data*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct perf_mem *mem)
{
	struct perf_data data = {
		.path  = input_name,
		.mode  = PERF_DATA_MODE_READ,
		.force = mem->force,
	};
	int ret;
	struct perf_session *session = FUNC4(&data, false,
							 &mem->tool);

	if (FUNC0(session))
		return FUNC1(session);

	if (mem->cpu_list) {
		ret = FUNC2(session, mem->cpu_list,
					       mem->cpu_bitmap);
		if (ret < 0)
			goto out_delete;
	}

	ret = FUNC7(&session->header.env);
	if (ret < 0)
		goto out_delete;

	if (mem->phys_addr)
		FUNC6("# PID, TID, IP, ADDR, PHYS ADDR, LOCAL WEIGHT, DSRC, SYMBOL\n");
	else
		FUNC6("# PID, TID, IP, ADDR, LOCAL WEIGHT, DSRC, SYMBOL\n");

	ret = FUNC5(session);

out_delete:
	FUNC3(session);
	return ret;
}