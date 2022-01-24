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
struct scan_control {int gfp_mask; } ;
struct pglist_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_INACTIVE_ANON ; 
 int /*<<< orphan*/  NR_INACTIVE_FILE ; 
 int /*<<< orphan*/  NR_ISOLATED_ANON ; 
 int /*<<< orphan*/  NR_ISOLATED_FILE ; 
 int __GFP_FS ; 
 int __GFP_IO ; 
 scalar_t__ FUNC0 () ; 
 unsigned long FUNC1 (struct pglist_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scan_control*) ; 

__attribute__((used)) static int FUNC3(struct pglist_data *pgdat, int file,
		struct scan_control *sc)
{
	unsigned long inactive, isolated;

	if (FUNC0())
		return 0;

	if (!FUNC2(sc))
		return 0;

	if (file) {
		inactive = FUNC1(pgdat, NR_INACTIVE_FILE);
		isolated = FUNC1(pgdat, NR_ISOLATED_FILE);
	} else {
		inactive = FUNC1(pgdat, NR_INACTIVE_ANON);
		isolated = FUNC1(pgdat, NR_ISOLATED_ANON);
	}

	/*
	 * GFP_NOIO/GFP_NOFS callers are allowed to isolate more pages, so they
	 * won't get blocked by normal direct-reclaimers, forming a circular
	 * deadlock.
	 */
	if ((sc->gfp_mask & (__GFP_IO | __GFP_FS)) == (__GFP_IO | __GFP_FS))
		inactive >>= 3;

	return isolated > inactive;
}