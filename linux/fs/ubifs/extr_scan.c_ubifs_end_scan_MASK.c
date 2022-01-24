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
struct ubifs_scan_leb {int /*<<< orphan*/  endpt; } ;
struct ubifs_info {int min_io_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info const*,int) ; 

void FUNC3(const struct ubifs_info *c, struct ubifs_scan_leb *sleb,
		    int lnum, int offs)
{
	FUNC1("stop scanning LEB %d at offset %d", lnum, offs);
	FUNC2(c, offs % c->min_io_size == 0);

	sleb->endpt = FUNC0(offs, c->min_io_size);
}