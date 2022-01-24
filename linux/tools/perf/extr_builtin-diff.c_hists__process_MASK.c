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
struct hists {int dummy; } ;
struct TYPE_2__ {int report_block; int /*<<< orphan*/  use_callchain; } ;

/* Variables and functions */
 scalar_t__ COMPUTE_CYCLES ; 
 scalar_t__ compute ; 
 int /*<<< orphan*/  FUNC0 (struct hists*) ; 
 int /*<<< orphan*/  FUNC1 (struct hists*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hists*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hists*) ; 
 int /*<<< orphan*/  quiet ; 
 scalar_t__ show_baseline_only ; 
 int /*<<< orphan*/  stdout ; 
 TYPE_1__ symbol_conf ; 

__attribute__((used)) static void FUNC4(struct hists *hists)
{
	if (show_baseline_only)
		FUNC0(hists);

	FUNC3(hists);
	FUNC2(hists, NULL);

	if (compute == COMPUTE_CYCLES)
		symbol_conf.report_block = true;

	FUNC1(hists, !quiet, 0, 0, 0, stdout,
		       !symbol_conf.use_callchain);
}