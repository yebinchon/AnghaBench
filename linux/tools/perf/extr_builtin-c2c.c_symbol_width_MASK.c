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
struct sort_entry {int /*<<< orphan*/  se_width_idx; } ;
struct hists {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  symbol_full; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYMBOL_WIDTH ; 
 TYPE_1__ c2c ; 
 int FUNC1 (struct hists*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hists *hists, struct sort_entry *se)
{
	int width = FUNC1(hists, se->se_width_idx);

	if (!c2c.symbol_full)
		width = FUNC0(width, SYMBOL_WIDTH);

	return width;
}