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
struct hist_entry {int unfolded; int has_children; int nr_rows; int /*<<< orphan*/  sorted_chain; scalar_t__ leaf; } ;
struct hist_browser {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct hist_browser*,struct hist_entry*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hist_entry*) ; 

__attribute__((used)) static void FUNC3(struct hist_entry *he,
				      struct hist_browser *hb, bool unfold)
{
	FUNC2(he);
	he->unfolded = unfold ? he->has_children : false;

	if (he->has_children) {
		int n;

		if (he->leaf)
			n = FUNC0(&he->sorted_chain, unfold);
		else
			n = FUNC1(hb, he, unfold);

		he->nr_rows = unfold ? n : 0;
	} else
		he->nr_rows = 0;
}