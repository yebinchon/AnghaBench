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
struct TYPE_2__ {int idx_lebs; } ;
struct ubifs_info {int* gap_lebs; int ileb_cnt; int /*<<< orphan*/  bi; TYPE_1__ lst; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*) ; 
 int FUNC2 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ubifs_info*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*,char*) ; 

__attribute__((used)) static int FUNC10(struct ubifs_info *c, int cnt)
{
	int err, leb_needed_cnt, written, *p;

	FUNC0("%d znodes to write", cnt);

	c->gap_lebs = FUNC4(c->lst.idx_lebs + 1, sizeof(int),
				    GFP_NOFS);
	if (!c->gap_lebs)
		return -ENOMEM;

	p = c->gap_lebs;
	do {
		FUNC6(c, p < c->gap_lebs + c->lst.idx_lebs);
		written = FUNC5(c, p);
		if (written < 0) {
			err = written;
			if (err != -ENOSPC) {
				FUNC3(c->gap_lebs);
				c->gap_lebs = NULL;
				return err;
			}
			if (!FUNC1(c)) {
				/*
				 * Do not print scary warnings if the debugging
				 * option which forces in-the-gaps is enabled.
				 */
				FUNC9(c, "out of space");
				FUNC7(c, &c->bi);
				FUNC8(c);
			}
			/* Try to commit anyway */
			break;
		}
		p++;
		cnt -= written;
		leb_needed_cnt = FUNC2(c, cnt);
		FUNC0("%d znodes remaining, need %d LEBs, have %d", cnt,
		       leb_needed_cnt, c->ileb_cnt);
	} while (leb_needed_cnt > c->ileb_cnt);

	*p = -1;
	return 0;
}