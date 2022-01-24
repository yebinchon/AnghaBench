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

/* Variables and functions */
 int /*<<< orphan*/  HEADER_AUXTRACE ; 
 int /*<<< orphan*/  HEADER_BRANCH_STACK ; 
 int /*<<< orphan*/  HEADER_BUILD_ID ; 
 int /*<<< orphan*/  HEADER_DIR_FORMAT ; 
 int HEADER_FIRST_FEATURE ; 
 int HEADER_LAST_FEATURE ; 
 int /*<<< orphan*/  HEADER_TRACING_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct perf_session *session)
{
	int feat;

	for (feat = HEADER_FIRST_FEATURE; feat < HEADER_LAST_FEATURE; feat++)
		FUNC1(&session->header, feat);

	FUNC0(&session->header, HEADER_DIR_FORMAT);
	FUNC0(&session->header, HEADER_BUILD_ID);
	FUNC0(&session->header, HEADER_TRACING_DATA);
	FUNC0(&session->header, HEADER_BRANCH_STACK);
	FUNC0(&session->header, HEADER_AUXTRACE);
}