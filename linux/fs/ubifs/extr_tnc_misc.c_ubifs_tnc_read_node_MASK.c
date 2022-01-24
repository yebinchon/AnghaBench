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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_zbranch {int /*<<< orphan*/  offs; int /*<<< orphan*/  lnum; int /*<<< orphan*/  hash; int /*<<< orphan*/  len; union ubifs_key key; } ;
struct ubifs_wbuf {int dummy; } ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int UBIFS_KEY_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (union ubifs_key*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,void*,union ubifs_key*) ; 
 int FUNC2 (struct ubifs_info*,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,union ubifs_key*,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ubifs_wbuf* FUNC7 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ubifs_info*,void*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ubifs_info*,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ubifs_wbuf*,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(struct ubifs_info *c, struct ubifs_zbranch *zbr,
			void *node)
{
	union ubifs_key key1, *key = &zbr->key;
	int err, type = FUNC2(c, key);
	struct ubifs_wbuf *wbuf;

	/*
	 * 'zbr' has to point to on-flash node. The node may sit in a bud and
	 * may even be in a write buffer, so we have to take care about this.
	 */
	wbuf = FUNC7(c, zbr->lnum);
	if (wbuf)
		err = FUNC10(wbuf, node, type, zbr->len,
					   zbr->lnum, zbr->offs);
	else
		err = FUNC9(c, node, type, zbr->len, zbr->lnum,
				      zbr->offs);

	if (err) {
		FUNC0(key, "key ");
		return err;
	}

	/* Make sure the key of the read node is correct */
	FUNC1(c, node + UBIFS_KEY_OFFSET, &key1);
	if (!FUNC3(c, key, &key1)) {
		FUNC6(c, "bad key in node at LEB %d:%d",
			  zbr->lnum, zbr->offs);
		FUNC0(key, "looked for key ");
		FUNC0(&key1, "but found node's key ");
		FUNC5(c, node);
		return -EINVAL;
	}

	err = FUNC8(c, node, zbr->hash);
	if (err) {
		FUNC4(c, node, zbr->hash, zbr->lnum, zbr->offs);
		return err;
	}

	return 0;
}