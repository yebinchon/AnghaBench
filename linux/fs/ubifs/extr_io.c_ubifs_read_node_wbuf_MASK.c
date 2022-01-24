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
struct ubifs_wbuf {int lnum; int offs; int buf; int /*<<< orphan*/  lock; int /*<<< orphan*/  jhead; struct ubifs_info* c; } ;
struct ubifs_info {int leb_cnt; int leb_size; } ;
struct ubifs_ch {int node_type; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EINVAL ; 
 int UBIFS_NODE_TYPES_CNT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info const*,int) ; 
 int FUNC9 (struct ubifs_info const*,void*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info const*,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_info const*,char*,int,...) ; 
 int FUNC12 (struct ubifs_info const*,int,void*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ubifs_info const*,void*,int,int,int,int) ; 

int FUNC14(struct ubifs_wbuf *wbuf, void *buf, int type, int len,
			 int lnum, int offs)
{
	const struct ubifs_info *c = wbuf->c;
	int err, rlen, overlap;
	struct ubifs_ch *ch = buf;

	FUNC0("LEB %d:%d, %s, length %d, jhead %s", lnum, offs,
	       FUNC2(type), len, FUNC1(wbuf->jhead));
	FUNC8(c, wbuf && lnum >= 0 && lnum < c->leb_cnt && offs >= 0);
	FUNC8(c, !(offs & 7) && offs < c->leb_size);
	FUNC8(c, type >= 0 && type < UBIFS_NODE_TYPES_CNT);

	FUNC6(&wbuf->lock);
	overlap = (lnum == wbuf->lnum && offs + len > wbuf->offs);
	if (!overlap) {
		/* We may safely unlock the write-buffer and read the data */
		FUNC7(&wbuf->lock);
		return FUNC13(c, buf, type, len, lnum, offs);
	}

	/* Don't read under wbuf */
	rlen = wbuf->offs - offs;
	if (rlen < 0)
		rlen = 0;

	/* Copy the rest from the write-buffer */
	FUNC5(buf + rlen, wbuf->buf + offs + rlen - wbuf->offs, len - rlen);
	FUNC7(&wbuf->lock);

	if (rlen > 0) {
		/* Read everything that goes before write-buffer */
		err = FUNC12(c, lnum, buf, offs, rlen, 0);
		if (err && err != -EBADMSG)
			return err;
	}

	if (type != ch->node_type) {
		FUNC11(c, "bad node type (%d but expected %d)",
			  ch->node_type, type);
		goto out;
	}

	err = FUNC9(c, buf, lnum, offs, 0, 0);
	if (err) {
		FUNC11(c, "expected node type %d", type);
		return err;
	}

	rlen = FUNC4(ch->len);
	if (rlen != len) {
		FUNC11(c, "bad node length %d, expected %d", rlen, len);
		goto out;
	}

	return 0;

out:
	FUNC11(c, "bad node at LEB %d:%d", lnum, offs);
	FUNC10(c, buf);
	FUNC3();
	return -EINVAL;
}