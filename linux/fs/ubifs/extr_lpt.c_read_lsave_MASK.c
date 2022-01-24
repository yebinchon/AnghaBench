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
struct ubifs_lprops {int dummy; } ;
struct ubifs_info {int lsave_cnt; int* lsave; int leb_cnt; int /*<<< orphan*/  lsave_sz; int /*<<< orphan*/  lsave_offs; int /*<<< orphan*/  lsave_lnum; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct ubifs_lprops*) ; 
 int FUNC1 (struct ubifs_lprops*) ; 
 int FUNC2 (struct ubifs_info*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ubifs_lprops* FUNC3 (struct ubifs_info*,int) ; 
 int FUNC4 (struct ubifs_info*,void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ubifs_info *c)
{
	int err, i;
	void *buf;

	buf = FUNC6(c->lsave_sz);
	if (!buf)
		return -ENOMEM;
	err = FUNC2(c, c->lsave_lnum, buf, c->lsave_offs,
			     c->lsave_sz, 1);
	if (err)
		goto out;
	err = FUNC4(c, buf);
	if (err)
		goto out;
	for (i = 0; i < c->lsave_cnt; i++) {
		int lnum = c->lsave[i];
		struct ubifs_lprops *lprops;

		/*
		 * Due to automatic resizing, the values in the lsave table
		 * could be beyond the volume size - just ignore them.
		 */
		if (lnum >= c->leb_cnt)
			continue;
		lprops = FUNC3(c, lnum);
		if (FUNC0(lprops)) {
			err = FUNC1(lprops);
			goto out;
		}
	}
out:
	FUNC5(buf);
	return err;
}