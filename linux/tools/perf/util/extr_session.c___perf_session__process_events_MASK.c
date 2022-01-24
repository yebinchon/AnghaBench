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
struct ui_progress {int dummy; } ;
struct reader {scalar_t__ data_size; int /*<<< orphan*/  process; int /*<<< orphan*/  data_offset; int /*<<< orphan*/  fd; } ;
struct perf_tool {int /*<<< orphan*/  no_warn; } ;
struct ordered_events {int dummy; } ;
struct TYPE_2__ {scalar_t__ data_size; int /*<<< orphan*/  data_offset; } ;
struct perf_session {int one_mmap; struct ordered_events ordered_events; struct perf_tool* tool; TYPE_1__ header; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  OE_FLUSH__FINAL ; 
 int FUNC0 (struct perf_session*,struct perf_tool*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_session*) ; 
 int FUNC2 (struct ordered_events*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ordered_events*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_tool*) ; 
 int /*<<< orphan*/  process_simple ; 
 int FUNC8 (struct reader*,struct perf_session*,struct ui_progress*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct ui_progress*,scalar_t__,char*) ; 

__attribute__((used)) static int FUNC11(struct perf_session *session)
{
	struct reader rd = {
		.fd		= FUNC4(session->data),
		.data_size	= session->header.data_size,
		.data_offset	= session->header.data_offset,
		.process	= process_simple,
	};
	struct ordered_events *oe = &session->ordered_events;
	struct perf_tool *tool = session->tool;
	struct ui_progress prog;
	int err;

	FUNC7(tool);

	if (rd.data_size == 0)
		return -1;

	FUNC10(&prog, rd.data_size, "Processing events...");

	err = FUNC8(&rd, session, &prog);
	if (err)
		goto out_err;
	/* do the final flush for ordered samples */
	err = FUNC2(oe, OE_FLUSH__FINAL);
	if (err)
		goto out_err;
	err = FUNC0(session, tool);
	if (err)
		goto out_err;
	err = FUNC5(session);
out_err:
	FUNC9();
	if (!tool->no_warn)
		FUNC6(session);
	/*
	 * We may switching perf.data output, make ordered_events
	 * reusable.
	 */
	FUNC3(&session->ordered_events);
	FUNC1(session);
	session->one_mmap = false;
	return err;
}