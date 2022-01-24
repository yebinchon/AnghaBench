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
struct ubifs_info {int leb_size; int min_io_size; } ;
struct ubifs_ch {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 
 int FUNC3 (struct ubifs_info*,int,void*,int) ; 
 int FUNC4 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,void*,int) ; 

__attribute__((used)) static int FUNC6(struct ubifs_info *c, void *buf, int *lnum, int *offs,
		    void *node)
{
	struct ubifs_ch *ch = node;
	int len = FUNC1(ch->len), remains = c->leb_size - *offs;

	if (len > remains) {
		int sz = FUNC0(*offs, c->min_io_size), err;

		FUNC5(c, buf + *offs, sz - *offs);
		err = FUNC3(c, *lnum, buf, sz);
		if (err)
			return err;
		*lnum = FUNC4(c, *lnum);
		*offs = 0;
	}
	FUNC2(buf + *offs, node, len);
	*offs += FUNC0(len, 8);
	return 0;
}