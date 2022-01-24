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
struct pglist_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_FILE_DIRTY ; 
 int /*<<< orphan*/  NR_UNSTABLE_NFS ; 
 int /*<<< orphan*/  NR_WRITEBACK ; 
 unsigned long FUNC0 (struct pglist_data*) ; 
 scalar_t__ FUNC1 (struct pglist_data*,int /*<<< orphan*/ ) ; 

bool FUNC2(struct pglist_data *pgdat)
{
	unsigned long limit = FUNC0(pgdat);
	unsigned long nr_pages = 0;

	nr_pages += FUNC1(pgdat, NR_FILE_DIRTY);
	nr_pages += FUNC1(pgdat, NR_UNSTABLE_NFS);
	nr_pages += FUNC1(pgdat, NR_WRITEBACK);

	return nr_pages <= limit;
}