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
struct ubifs_info {int leb_size; int /*<<< orphan*/  lp_mutex; void* lpt_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct ubifs_info*,int) ; 
 int FUNC2 (struct ubifs_info*,void*,int*) ; 
 int FUNC3 (struct ubifs_info*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,void*,int) ; 
 int FUNC5 (struct ubifs_info*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,int) ; 
 int FUNC9 (struct ubifs_info*,int,void*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC10(struct ubifs_info *c, int lnum)
{
	int err, len = c->leb_size, node_type, node_num, node_len, offs;
	void *buf = c->lpt_buf;

	FUNC0("LEB %d", lnum);

	err = FUNC9(c, lnum, buf, 0, c->leb_size, 1);
	if (err)
		return err;

	while (1) {
		if (!FUNC4(c, buf, len)) {
			int pad_len;

			pad_len = FUNC3(c, buf, len);
			if (pad_len) {
				buf += pad_len;
				len -= pad_len;
				continue;
			}
			return 0;
		}
		node_type = FUNC2(c, buf, &node_num);
		node_len = FUNC1(c, node_type);
		offs = c->leb_size - len;
		FUNC8(c, node_len != 0);
		FUNC6(&c->lp_mutex);
		err = FUNC5(c, node_type, node_num, lnum, offs);
		FUNC7(&c->lp_mutex);
		if (err)
			return err;
		buf += node_len;
		len -= node_len;
	}
	return 0;
}