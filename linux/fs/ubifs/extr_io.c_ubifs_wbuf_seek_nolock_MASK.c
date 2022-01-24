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
struct ubifs_wbuf {int lnum; scalar_t__ used; int offs; int size; int avail; int /*<<< orphan*/  lock; int /*<<< orphan*/  jhead; struct ubifs_info* c; } ;
struct ubifs_info {int leb_cnt; int leb_size; int min_io_size; int max_write_size; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info const*,int) ; 

int FUNC6(struct ubifs_wbuf *wbuf, int lnum, int offs)
{
	const struct ubifs_info *c = wbuf->c;

	FUNC1("LEB %d:%d, jhead %s", lnum, offs, FUNC2(wbuf->jhead));
	FUNC5(c, lnum >= 0 && lnum < c->leb_cnt);
	FUNC5(c, offs >= 0 && offs <= c->leb_size);
	FUNC5(c, offs % c->min_io_size == 0 && !(offs & 7));
	FUNC5(c, lnum != wbuf->lnum);
	FUNC5(c, wbuf->used == 0);

	FUNC3(&wbuf->lock);
	wbuf->lnum = lnum;
	wbuf->offs = offs;
	if (c->leb_size - wbuf->offs < c->max_write_size)
		wbuf->size = c->leb_size - wbuf->offs;
	else if (wbuf->offs & (c->max_write_size - 1))
		wbuf->size = FUNC0(wbuf->offs, c->max_write_size) - wbuf->offs;
	else
		wbuf->size = c->max_write_size;
	wbuf->avail = wbuf->size;
	wbuf->used = 0;
	FUNC4(&wbuf->lock);

	return 0;
}