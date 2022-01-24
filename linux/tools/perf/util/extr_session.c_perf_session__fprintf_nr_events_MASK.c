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
struct perf_session {TYPE_1__* evlist; int /*<<< orphan*/  header; } ;
struct TYPE_2__ {int /*<<< orphan*/  stats; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  HEADER_AUXTRACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

size_t FUNC3(struct perf_session *session, FILE *fp)
{
	size_t ret;
	const char *msg = "";

	if (FUNC2(&session->header, HEADER_AUXTRACE))
		msg = " (excludes AUX area (e.g. instruction trace) decoded / synthesized events)";

	ret = FUNC1(fp, "\nAggregated stats:%s\n", msg);

	ret += FUNC0(&session->evlist->stats, fp);
	return ret;
}