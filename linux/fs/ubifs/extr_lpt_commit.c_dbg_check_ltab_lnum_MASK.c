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
struct ubifs_info {int leb_size; int lpt_first; TYPE_1__* ltab; } ;
struct TYPE_2__ {int free; int dirty; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 void* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*) ; 
 int FUNC3 (struct ubifs_info*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (struct ubifs_info*,int) ; 
 int FUNC6 (struct ubifs_info*,void*,int*) ; 
 int FUNC7 (struct ubifs_info*,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*,char*,...) ; 
 int FUNC10 (struct ubifs_info*,int,void*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 

__attribute__((used)) static int FUNC12(struct ubifs_info *c, int lnum)
{
	int err, len = c->leb_size, dirty = 0, node_type, node_num, node_len;
	int ret;
	void *buf, *p;

	if (!FUNC2(c))
		return 0;

	buf = p = FUNC0(c->leb_size, GFP_NOFS, PAGE_KERNEL);
	if (!buf) {
		FUNC9(c, "cannot allocate memory for ltab checking");
		return 0;
	}

	FUNC4("LEB %d", lnum);

	err = FUNC10(c, lnum, buf, 0, c->leb_size, 1);
	if (err)
		goto out;

	while (1) {
		if (!FUNC8(c, p, len)) {
			int i, pad_len;

			pad_len = FUNC7(c, p, len);
			if (pad_len) {
				p += pad_len;
				len -= pad_len;
				dirty += pad_len;
				continue;
			}
			if (!FUNC1(p, len)) {
				FUNC9(c, "invalid empty space in LEB %d at %d",
					  lnum, c->leb_size - len);
				err = -EINVAL;
			}
			i = lnum - c->lpt_first;
			if (len != c->ltab[i].free) {
				FUNC9(c, "invalid free space in LEB %d (free %d, expected %d)",
					  lnum, len, c->ltab[i].free);
				err = -EINVAL;
			}
			if (dirty != c->ltab[i].dirty) {
				FUNC9(c, "invalid dirty space in LEB %d (dirty %d, expected %d)",
					  lnum, dirty, c->ltab[i].dirty);
				err = -EINVAL;
			}
			goto out;
		}
		node_type = FUNC6(c, p, &node_num);
		node_len = FUNC5(c, node_type);
		ret = FUNC3(c, node_type, lnum, c->leb_size - len);
		if (ret == 1)
			dirty += node_len;
		p += node_len;
		len -= node_len;
	}

	err = 0;
out:
	FUNC11(buf);
	return err;
}