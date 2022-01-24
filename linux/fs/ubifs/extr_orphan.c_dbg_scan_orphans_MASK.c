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
struct ubifs_scan_leb {int dummy; } ;
struct ubifs_info {int orph_first; int orph_last; int /*<<< orphan*/  leb_size; scalar_t__ no_orphs; } ;
struct check_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct ubifs_scan_leb*) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int FUNC1 (struct ubifs_scan_leb*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct check_info*,struct ubifs_scan_leb*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,char*) ; 
 struct ubifs_scan_leb* FUNC5 (struct ubifs_info*,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_scan_leb*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static int FUNC8(struct ubifs_info *c, struct check_info *ci)
{
	int lnum, err = 0;
	void *buf;

	/* Check no-orphans flag and skip this if no orphans */
	if (c->no_orphs)
		return 0;

	buf = FUNC2(c->leb_size, GFP_NOFS, PAGE_KERNEL);
	if (!buf) {
		FUNC4(c, "cannot allocate memory to check orphans");
		return 0;
	}

	for (lnum = c->orph_first; lnum <= c->orph_last; lnum++) {
		struct ubifs_scan_leb *sleb;

		sleb = FUNC5(c, lnum, 0, buf, 0);
		if (FUNC0(sleb)) {
			err = FUNC1(sleb);
			break;
		}

		err = FUNC3(ci, sleb);
		FUNC6(sleb);
		if (err)
			break;
	}

	FUNC7(buf);
	return err;
}