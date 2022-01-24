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
struct pnfs_layout_hdr {int /*<<< orphan*/  plh_refcount; int /*<<< orphan*/  plh_flags; int /*<<< orphan*/  plh_retry_timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct pnfs_layout_hdr *lo, int fail_bit)
{
	lo->plh_retry_timestamp = jiffies;
	if (!FUNC1(fail_bit, &lo->plh_flags))
		FUNC0(&lo->plh_refcount);
}