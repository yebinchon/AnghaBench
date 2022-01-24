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
struct ubifs_scan_leb {int lnum; void* buf; int /*<<< orphan*/  nodes; } ;
struct ubifs_info {scalar_t__ leb_size; } ;

/* Variables and functions */
 int EBADMSG ; 
 int ENOMEM ; 
 struct ubifs_scan_leb* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_scan_leb*) ; 
 struct ubifs_scan_leb* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info const*,char*,scalar_t__,int,int,int) ; 
 int FUNC6 (struct ubifs_info const*,int,void*,int,scalar_t__,int /*<<< orphan*/ ) ; 

struct ubifs_scan_leb *FUNC7(const struct ubifs_info *c, int lnum,
					int offs, void *sbuf)
{
	struct ubifs_scan_leb *sleb;
	int err;

	FUNC2("scan LEB %d:%d", lnum, offs);

	sleb = FUNC4(sizeof(struct ubifs_scan_leb), GFP_NOFS);
	if (!sleb)
		return FUNC0(-ENOMEM);

	sleb->lnum = lnum;
	FUNC1(&sleb->nodes);
	sleb->buf = sbuf;

	err = FUNC6(c, lnum, sbuf + offs, offs, c->leb_size - offs, 0);
	if (err && err != -EBADMSG) {
		FUNC5(c, "cannot read %d bytes from LEB %d:%d, error %d",
			  c->leb_size - offs, lnum, offs, err);
		FUNC3(sleb);
		return FUNC0(err);
	}

	/*
	 * Note, we ignore integrity errors (EBASMSG) because all the nodes are
	 * protected by CRC checksums.
	 */
	return sleb;
}