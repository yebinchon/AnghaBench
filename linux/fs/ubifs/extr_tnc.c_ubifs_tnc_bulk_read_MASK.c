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
struct ubifs_wbuf {int dummy; } ;
struct ubifs_info {int dummy; } ;
struct bu_info {int cnt; int buf_len; TYPE_1__* zbranch; void* buf; int /*<<< orphan*/  key; int /*<<< orphan*/  gc_seq; } ;
struct TYPE_2__ {int lnum; int offs; int len; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EAGAIN ; 
 int EBADMSG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct ubifs_info*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ubifs_wbuf*,void*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,char*,int,int,...) ; 
 struct ubifs_wbuf* FUNC6 (struct ubifs_info*,int) ; 
 int FUNC7 (struct ubifs_info*,int,void*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ubifs_info*,void*,TYPE_1__*) ; 

int FUNC9(struct ubifs_info *c, struct bu_info *bu)
{
	int lnum = bu->zbranch[0].lnum, offs = bu->zbranch[0].offs, len, err, i;
	struct ubifs_wbuf *wbuf;
	void *buf;

	len = bu->zbranch[bu->cnt - 1].offs;
	len += bu->zbranch[bu->cnt - 1].len - offs;
	if (len > bu->buf_len) {
		FUNC5(c, "buffer too small %d vs %d", bu->buf_len, len);
		return -EINVAL;
	}

	/* Do the read */
	wbuf = FUNC6(c, lnum);
	if (wbuf)
		err = FUNC4(wbuf, bu->buf, len, lnum, offs);
	else
		err = FUNC7(c, lnum, bu->buf, offs, len, 0);

	/* Check for a race with GC */
	if (FUNC3(c, lnum, bu->gc_seq))
		return -EAGAIN;

	if (err && err != -EBADMSG) {
		FUNC5(c, "failed to read from LEB %d:%d, error %d",
			  lnum, offs, err);
		FUNC2();
		FUNC1(&bu->key, "key ");
		return err;
	}

	/* Validate the nodes read */
	buf = bu->buf;
	for (i = 0; i < bu->cnt; i++) {
		err = FUNC8(c, buf, &bu->zbranch[i]);
		if (err)
			return err;
		buf = buf + FUNC0(bu->zbranch[i].len, 8);
	}

	return 0;
}