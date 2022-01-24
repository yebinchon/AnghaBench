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
struct perf_session {int /*<<< orphan*/  evlist; int /*<<< orphan*/  header; struct perf_data* data; } ;
struct perf_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HEADER_STAT ; 
 scalar_t__ FUNC0 (struct perf_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct perf_session *session)
{
	struct perf_data *data = session->data;

	if (FUNC5(session) < 0) {
		FUNC6("incompatible file format (rerun with -v to learn more)\n");
		return -1;
	}

	if (FUNC0(data))
		return 0;

	if (FUNC4(&session->header, HEADER_STAT))
		return 0;

	if (!FUNC3(session->evlist)) {
		FUNC6("non matching sample_type\n");
		return -1;
	}

	if (!FUNC2(session->evlist)) {
		FUNC6("non matching sample_id_all\n");
		return -1;
	}

	if (!FUNC1(session->evlist)) {
		FUNC6("non matching read_format\n");
		return -1;
	}

	return 0;
}