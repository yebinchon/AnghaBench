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
struct ubifs_info {int leb_cnt; int leb_size; int /*<<< orphan*/  probing; int /*<<< orphan*/  ubi; } ;
struct ubifs_ch {int node_type; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EINVAL ; 
 int UBIFS_CH_SZ ; 
 int UBIFS_NODE_TYPES_CNT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info const*,int) ; 
 int FUNC6 (struct ubifs_info const*,void*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info const*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info const*,char*,int,...) ; 
 int FUNC9 (struct ubifs_info const*,int,void*,int,int,int /*<<< orphan*/ ) ; 

int FUNC10(const struct ubifs_info *c, void *buf, int type, int len,
		    int lnum, int offs)
{
	int err, l;
	struct ubifs_ch *ch = buf;

	FUNC0("LEB %d:%d, %s, length %d", lnum, offs, FUNC1(type), len);
	FUNC5(c, lnum >= 0 && lnum < c->leb_cnt && offs >= 0);
	FUNC5(c, len >= UBIFS_CH_SZ && offs + len <= c->leb_size);
	FUNC5(c, !(offs & 7) && offs < c->leb_size);
	FUNC5(c, type >= 0 && type < UBIFS_NODE_TYPES_CNT);

	err = FUNC9(c, lnum, buf, offs, len, 0);
	if (err && err != -EBADMSG)
		return err;

	if (type != ch->node_type) {
		FUNC8(c, "bad node type (%d but expected %d)",
			   ch->node_type, type);
		goto out;
	}

	err = FUNC6(c, buf, lnum, offs, 0, 0);
	if (err) {
		FUNC8(c, "expected node type %d", type);
		return err;
	}

	l = FUNC3(ch->len);
	if (l != len) {
		FUNC8(c, "bad node length %d, expected %d", l, len);
		goto out;
	}

	return 0;

out:
	FUNC8(c, "bad node at LEB %d:%d, LEB mapping status %d", lnum,
		   offs, FUNC4(c->ubi, lnum));
	if (!c->probing) {
		FUNC7(c, buf);
		FUNC2();
	}
	return -EINVAL;
}