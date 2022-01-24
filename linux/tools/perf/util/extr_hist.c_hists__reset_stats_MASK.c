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
struct TYPE_2__ {scalar_t__ total_period; } ;
struct hists {TYPE_1__ stats; scalar_t__ nr_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hists*) ; 

void FUNC1(struct hists *hists)
{
	hists->nr_entries = 0;
	hists->stats.total_period = 0;

	FUNC0(hists);
}