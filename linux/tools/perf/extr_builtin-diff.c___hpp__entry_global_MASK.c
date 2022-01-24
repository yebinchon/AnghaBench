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
struct hist_entry {int dummy; } ;
struct diff_hpp_fmt {int idx; } ;

/* Variables and functions */
 int PERF_HPP_DIFF__BASELINE ; 
 struct hist_entry* FUNC0 (struct hist_entry*,struct diff_hpp_fmt*) ; 
 int /*<<< orphan*/  FUNC1 (struct hist_entry*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct hist_entry*,struct hist_entry*,int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct hist_entry*,int,char*,size_t) ; 

__attribute__((used)) static void
FUNC4(struct hist_entry *he, struct diff_hpp_fmt *dfmt,
		    char *buf, size_t size)
{
	struct hist_entry *pair = FUNC0(he, dfmt);
	int idx = dfmt->idx;

	/* baseline is special */
	if (idx == PERF_HPP_DIFF__BASELINE)
		FUNC1(he, buf, size);
	else {
		if (pair)
			FUNC2(he, pair, idx, buf, size);
		else
			FUNC3(he, idx, buf, size);
	}
}