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
typedef  int /*<<< orphan*/  u32 ;
struct pnfs_layout_hdr {int /*<<< orphan*/  plh_retry_timestamp; int /*<<< orphan*/  plh_flags; } ;

/* Variables and functions */
 unsigned long PNFS_LAYOUTGET_RETRY_TIMEOUT ; 
 unsigned long jiffies ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pnfs_layout_hdr*,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 

__attribute__((used)) static bool
FUNC4(struct pnfs_layout_hdr *lo, u32 iomode)
{
	unsigned long start, end;
	int fail_bit = FUNC0(iomode);

	if (FUNC2(fail_bit, &lo->plh_flags) == 0)
		return false;
	end = jiffies;
	start = end - PNFS_LAYOUTGET_RETRY_TIMEOUT;
	if (!FUNC3(lo->plh_retry_timestamp, start, end)) {
		/* It is time to retry the failed layoutgets */
		FUNC1(lo, fail_bit);
		return false;
	}
	return true;
}