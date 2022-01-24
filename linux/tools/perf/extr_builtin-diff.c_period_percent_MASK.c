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
typedef  double u64 ;
struct hist_entry {int /*<<< orphan*/  hists; } ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static double FUNC1(struct hist_entry *he, u64 period)
{
	u64 total = FUNC0(he->hists);

	return (period * 100.0) / total;
}