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
struct TYPE_2__ {int /*<<< orphan*/  host; } ;
struct perf_session {TYPE_1__ machines; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

size_t FUNC1(struct perf_session *session, FILE *fp)
{
	/*
	 * FIXME: Here we have to actually print all the machines in this
	 * session, not just the host...
	 */
	return FUNC0(&session->machines.host, fp);
}