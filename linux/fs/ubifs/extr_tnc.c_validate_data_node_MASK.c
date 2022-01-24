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
struct ubifs_zbranch {int lnum; scalar_t__ offs; int len; union ubifs_key key; int /*<<< orphan*/  hash; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_ch {scalar_t__ node_type; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UBIFS_DATA_NODE ; 
 int UBIFS_KEY_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (union ubifs_key*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,void*,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,union ubifs_key*,union ubifs_key*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,void*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC6 (struct ubifs_info*,void*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,char*,int,...) ; 
 int FUNC9 (struct ubifs_info*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct ubifs_info *c, void *buf,
			      struct ubifs_zbranch *zbr)
{
	union ubifs_key key1;
	struct ubifs_ch *ch = buf;
	int err, len;

	if (ch->node_type != UBIFS_DATA_NODE) {
		FUNC8(c, "bad node type (%d but expected %d)",
			  ch->node_type, UBIFS_DATA_NODE);
		goto out_err;
	}

	err = FUNC6(c, buf, zbr->lnum, zbr->offs, 0, 0);
	if (err) {
		FUNC8(c, "expected node type %d", UBIFS_DATA_NODE);
		goto out;
	}

	err = FUNC9(c, buf, zbr->hash);
	if (err) {
		FUNC5(c, buf, zbr->hash, zbr->lnum, zbr->offs);
		return err;
	}

	len = FUNC4(ch->len);
	if (len != zbr->len) {
		FUNC8(c, "bad node length %d, expected %d", len, zbr->len);
		goto out_err;
	}

	/* Make sure the key of the read node is correct */
	FUNC2(c, buf + UBIFS_KEY_OFFSET, &key1);
	if (!FUNC3(c, &zbr->key, &key1)) {
		FUNC8(c, "bad key in node at LEB %d:%d",
			  zbr->lnum, zbr->offs);
		FUNC0(&zbr->key, "looked for key ");
		FUNC0(&key1, "found node's key ");
		goto out_err;
	}

	return 0;

out_err:
	err = -EINVAL;
out:
	FUNC8(c, "bad node at LEB %d:%d", zbr->lnum, zbr->offs);
	FUNC7(c, buf);
	FUNC1();
	return err;
}