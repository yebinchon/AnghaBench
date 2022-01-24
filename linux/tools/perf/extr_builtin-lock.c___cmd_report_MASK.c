#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct perf_tool {int ordered_events; int /*<<< orphan*/  namespaces; int /*<<< orphan*/  comm; int /*<<< orphan*/  sample; } ;
struct perf_data {int /*<<< orphan*/  force; int /*<<< orphan*/  mode; int /*<<< orphan*/  path; } ;
struct TYPE_10__ {int /*<<< orphan*/  env; } ;
struct TYPE_11__ {TYPE_1__ header; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  PERF_DATA_MODE_READ ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  force ; 
 int /*<<< orphan*/  input_name ; 
 int /*<<< orphan*/  lock_tracepoints ; 
 int /*<<< orphan*/  perf_event__process_comm ; 
 int /*<<< orphan*/  perf_event__process_namespaces ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 TYPE_2__* FUNC5 (struct perf_data*,int,struct perf_tool*) ; 
 int FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  process_sample_event ; 
 scalar_t__ FUNC10 () ; 
 TYPE_2__* session ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(bool display_info)
{
	int err = -EINVAL;
	struct perf_tool eops = {
		.sample		 = process_sample_event,
		.comm		 = perf_event__process_comm,
		.namespaces	 = perf_event__process_namespaces,
		.ordered_events	 = true,
	};
	struct perf_data data = {
		.path  = input_name,
		.mode  = PERF_DATA_MODE_READ,
		.force = force,
	};

	session = FUNC5(&data, false, &eops);
	if (FUNC0(session)) {
		FUNC8("Initializing perf session failed\n");
		return FUNC1(session);
	}

	FUNC13(&session->header.env);

	if (!FUNC4(session, "lock record"))
		goto out_delete;

	if (FUNC7(session, lock_tracepoints)) {
		FUNC8("Initializing perf session tracepoint handlers failed\n");
		goto out_delete;
	}

	if (FUNC10())
		goto out_delete;

	err = FUNC6(session);
	if (err)
		goto out_delete;

	FUNC11();
	if (display_info) /* used for info subcommand */
		err = FUNC2();
	else {
		FUNC12();
		FUNC9();
	}

out_delete:
	FUNC3(session);
	return err;
}