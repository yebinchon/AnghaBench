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
struct perf_session {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_session*,int /*<<< orphan*/ *,int) ; 

void FUNC2(struct perf_session *session, FILE *fp,
				bool full)
{
	if (session == NULL || fp == NULL)
		return;

	FUNC0(fp, "# ========\n");
	FUNC1(session, fp, full);
	FUNC0(fp, "# ========\n#\n");
}