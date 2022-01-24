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
struct perf_session {scalar_t__ data; int /*<<< orphan*/  machines; TYPE_1__ header; int /*<<< orphan*/  auxtrace_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_session*) ; 

void FUNC9(struct perf_session *session)
{
	if (session == NULL)
		return;
	FUNC0(session);
	FUNC1(&session->auxtrace_index);
	FUNC7(session);
	FUNC6(session);
	FUNC8(session);
	FUNC5(&session->header.env);
	FUNC3(&session->machines);
	if (session->data)
		FUNC4(session->data);
	FUNC2(session);
}