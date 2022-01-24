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
struct ubifs_info {scalar_t__ leb_size; int /*<<< orphan*/  min_io_size; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info const*,void*,int) ; 

__attribute__((used)) static void FUNC5(const struct ubifs_info *c, void **buf, int lnum,
		      int *offs, int *len)
{
	int empty_offs, pad_len;

	FUNC1("cleaning corruption at %d:%d", lnum, *offs);

	FUNC3(c, !(*offs & 7));
	empty_offs = FUNC0(*offs, c->min_io_size);
	pad_len = empty_offs - *offs;
	FUNC4(c, *buf, pad_len);
	*offs += pad_len;
	*buf += pad_len;
	*len -= pad_len;
	FUNC2(*buf, 0xff, c->leb_size - empty_offs);
}