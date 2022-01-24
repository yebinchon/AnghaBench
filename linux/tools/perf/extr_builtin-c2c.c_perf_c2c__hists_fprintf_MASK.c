#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct perf_session {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  hists; } ;
struct TYPE_4__ {TYPE_1__ hists; scalar_t__ stats_only; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_2__ c2c ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct perf_session*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC7(FILE *out, struct perf_session *session)
{
	FUNC6();

	FUNC2(out);
	FUNC0(out, "\n");
	FUNC5(out);
	FUNC0(out, "\n");
	FUNC3(out, session);

	if (c2c.stats_only)
		return;

	FUNC0(out, "\n");
	FUNC0(out, "=================================================\n");
	FUNC0(out, "           Shared Data Cache Line Table          \n");
	FUNC0(out, "=================================================\n");
	FUNC0(out, "#\n");

	FUNC1(&c2c.hists.hists, true, 0, 0, 0, stdout, true);

	FUNC0(out, "\n");
	FUNC0(out, "=================================================\n");
	FUNC0(out, "      Shared Cache Line Distribution Pareto      \n");
	FUNC0(out, "=================================================\n");
	FUNC0(out, "#\n");

	FUNC4(out);
}