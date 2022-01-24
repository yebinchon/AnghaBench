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
struct ubifs_wbuf {int lnum; int offs; int used; } ;
struct ubifs_info {TYPE_1__* jheads; } ;
struct TYPE_2__ {int /*<<< orphan*/  log_hash; struct ubifs_wbuf wbuf; } ;

/* Variables and functions */
 int GCHD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,int) ; 
 scalar_t__ FUNC3 (struct ubifs_info*) ; 
 int FUNC4 (struct ubifs_info*,void*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ubifs_wbuf*) ; 
 int FUNC6 (struct ubifs_wbuf*,void*,int) ; 

__attribute__((used)) static int FUNC7(struct ubifs_info *c, int jhead, void *buf, int len,
		      int *lnum, int *offs, int sync)
{
	int err;
	struct ubifs_wbuf *wbuf = &c->jheads[jhead].wbuf;

	FUNC2(c, jhead != GCHD);

	*lnum = c->jheads[jhead].wbuf.lnum;
	*offs = c->jheads[jhead].wbuf.offs + c->jheads[jhead].wbuf.used;
	FUNC1("jhead %s, LEB %d:%d, len %d",
		FUNC0(jhead), *lnum, *offs, len);

	if (FUNC3(c)) {
		err = FUNC4(c, buf, len, c->jheads[jhead].log_hash);
		if (err)
			return err;
	}

	err = FUNC6(wbuf, buf, len);
	if (err)
		return err;
	if (sync)
		err = FUNC5(wbuf);
	return err;
}