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
struct perf_session {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct perf_session*) ; 
 int FUNC1 (struct perf_session*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct perf_session*) ; 

int FUNC4(struct perf_session *session)
{
	if (FUNC3(session) < 0)
		return -ENOMEM;

	if (FUNC2(session->data))
		return FUNC1(session);

	return FUNC0(session);
}