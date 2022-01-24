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
struct ubifs_info {scalar_t__ ohead_offs; int /*<<< orphan*/  ohead_lnum; int /*<<< orphan*/  orph_buf; int /*<<< orphan*/  min_io_size; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,int) ; 
 int FUNC2 (struct ubifs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct ubifs_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct ubifs_info *c, int len, int atomic)
{
	int err = 0;

	if (atomic) {
		FUNC1(c, c->ohead_offs == 0);
		FUNC4(c, c->orph_buf, len, 1);
		len = FUNC0(len, c->min_io_size);
		err = FUNC2(c, c->ohead_lnum, c->orph_buf, len);
	} else {
		if (c->ohead_offs == 0) {
			/* Ensure LEB has been unmapped */
			err = FUNC3(c, c->ohead_lnum);
			if (err)
				return err;
		}
		err = FUNC5(c, c->orph_buf, len, c->ohead_lnum,
				       c->ohead_offs);
	}
	return err;
}