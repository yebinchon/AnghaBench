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
struct perf_session {int /*<<< orphan*/  header; } ;
struct perf_data {int force; int /*<<< orphan*/  mode; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  HEADER_AUXTRACE ; 
 scalar_t__ FUNC0 (struct perf_session*) ; 
 int /*<<< orphan*/  PERF_DATA_MODE_READ ; 
 int FUNC1 (struct perf_session*) ; 
 int /*<<< orphan*/  build_id__mark_dso_hit_ops ; 
 int /*<<< orphan*/  dso__skip_buildid ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  input_name ; 
 scalar_t__ FUNC3 (struct perf_data*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct perf_session* FUNC7 (struct perf_data*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_session*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(bool force, bool with_hits)
{
	struct perf_session *session;
	struct perf_data data = {
		.path  = input_name,
		.mode  = PERF_DATA_MODE_READ,
		.force = force,
	};

	FUNC9();
	/*
	 * See if this is an ELF file first:
	 */
	if (FUNC2(input_name, stdout) > 0)
		goto out;

	session = FUNC7(&data, false, &build_id__mark_dso_hit_ops);
	if (FUNC0(session))
		return FUNC1(session);

	/*
	 * We take all buildids when the file contains AUX area tracing data
	 * because we do not decode the trace because it would take too long.
	 */
	if (!FUNC3(&data) &&
	    FUNC4(&session->header, HEADER_AUXTRACE))
		with_hits = false;

	/*
	 * in pipe-mode, the only way to get the buildids is to parse
	 * the record stream. Buildids are stored as RECORD_HEADER_BUILD_ID
	 */
	if (with_hits || FUNC3(&data))
		FUNC8(session);

	FUNC6(session, stdout, dso__skip_buildid, with_hits);
	FUNC5(session);
out:
	return 0;
}