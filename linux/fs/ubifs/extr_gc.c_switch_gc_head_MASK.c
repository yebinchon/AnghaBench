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
struct ubifs_wbuf {scalar_t__ used; scalar_t__ offs; int /*<<< orphan*/  lnum; } ;
struct ubifs_info {int gc_lnum; scalar_t__ leb_size; TYPE_1__* jheads; } ;
struct TYPE_2__ {struct ubifs_wbuf wbuf; } ;

/* Variables and functions */
 size_t GCHD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__) ; 
 int FUNC1 (struct ubifs_info*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,int) ; 
 int FUNC3 (struct ubifs_info*,int) ; 
 int FUNC4 (struct ubifs_wbuf*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ubifs_wbuf*) ; 

__attribute__((used)) static int FUNC6(struct ubifs_info *c)
{
	int err, gc_lnum = c->gc_lnum;
	struct ubifs_wbuf *wbuf = &c->jheads[GCHD].wbuf;

	FUNC2(c, gc_lnum != -1);
	FUNC0("switch GC head from LEB %d:%d to LEB %d (waste %d bytes)",
	       wbuf->lnum, wbuf->offs + wbuf->used, gc_lnum,
	       c->leb_size - wbuf->offs - wbuf->used);

	err = FUNC5(wbuf);
	if (err)
		return err;

	/*
	 * The GC write-buffer was synchronized, we may safely unmap
	 * 'c->gc_lnum'.
	 */
	err = FUNC3(c, gc_lnum);
	if (err)
		return err;

	err = FUNC1(c, GCHD, gc_lnum, 0);
	if (err)
		return err;

	c->gc_lnum = -1;
	err = FUNC4(wbuf, gc_lnum, 0);
	return err;
}