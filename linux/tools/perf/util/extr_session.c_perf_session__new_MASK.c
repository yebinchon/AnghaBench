#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct perf_tool {int ordered_events; scalar_t__ ordering_requires_timestamps; } ;
struct TYPE_5__ {int /*<<< orphan*/ * env; int /*<<< orphan*/  single_address_space; } ;
struct TYPE_6__ {TYPE_2__ host; } ;
struct TYPE_4__ {int /*<<< orphan*/  env; } ;
struct perf_session {int repipe; int /*<<< orphan*/  evlist; TYPE_3__ machines; struct perf_data* data; TYPE_1__ header; int /*<<< orphan*/  ordered_events; int /*<<< orphan*/  auxtrace_index; struct perf_tool* tool; } ;
struct perf_data {int /*<<< orphan*/  is_pipe; scalar_t__ is_dir; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct perf_session* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  ordered_events__deliver_event ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct perf_data*) ; 
 scalar_t__ FUNC6 (struct perf_data*) ; 
 int FUNC7 (struct perf_data*) ; 
 int FUNC8 (struct perf_data*) ; 
 int /*<<< orphan*/  perf_env ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC14 (struct perf_session*) ; 
 int FUNC15 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC16 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC17 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 struct perf_session* FUNC19 (int) ; 

struct perf_session *FUNC20(struct perf_data *data,
				       bool repipe, struct perf_tool *tool)
{
	int ret = -ENOMEM;
	struct perf_session *session = FUNC19(sizeof(*session));

	if (!session)
		goto out;

	session->repipe = repipe;
	session->tool   = tool;
	FUNC1(&session->auxtrace_index);
	FUNC3(&session->machines);
	FUNC4(&session->ordered_events,
			     ordered_events__deliver_event, NULL);

	FUNC9(&session->header.env);
	if (data) {
		ret = FUNC7(data);
		if (ret < 0)
			goto out_delete;

		session->data = data;

		if (FUNC5(data)) {
			ret = FUNC15(session);
			if (ret < 0)
				goto out_delete;

			/*
			 * set session attributes that are present in perf.data
			 * but not in pipe-mode.
			 */
			if (!data->is_pipe) {
				FUNC17(session);
				FUNC16(session);
			}

			FUNC11(session->evlist);

			/* Open the directory data. */
			if (data->is_dir) {
				ret = FUNC8(data);
			if (ret)
				goto out_delete;
			}
		}
	} else  {
		session->machines.host.env = &perf_env;
	}

	session->machines.host.single_address_space =
		FUNC10(session->machines.host.env);

	if (!data || FUNC6(data)) {
		/*
		 * In O_RDONLY mode this will be performed when reading the
		 * kernel MMAP event, in perf_event__process_mmap().
		 */
		if (FUNC13(session) < 0)
			FUNC18("Cannot read kernel map\n");
	}

	/*
	 * In pipe-mode, evlist is empty until PERF_RECORD_HEADER_ATTR is
	 * processed, so perf_evlist__sample_id_all is not meaningful here.
	 */
	if ((!data || !data->is_pipe) && tool && tool->ordering_requires_timestamps &&
	    tool->ordered_events && !FUNC12(session->evlist)) {
		FUNC2("WARNING: No sample_id_all support, falling back to unordered processing\n");
		tool->ordered_events = false;
	}

	return session;

 out_delete:
	FUNC14(session);
 out:
	return FUNC0(ret);
}