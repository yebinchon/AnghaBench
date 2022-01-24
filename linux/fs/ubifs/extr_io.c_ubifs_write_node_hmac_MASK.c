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
struct ubifs_info {int min_io_size; int leb_cnt; int leb_size; scalar_t__ ro_error; int /*<<< orphan*/  space_fixup; int /*<<< orphan*/  ro_mount; int /*<<< orphan*/  ro_media; } ;
struct ubifs_ch {int /*<<< orphan*/  node_type; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,void*) ; 
 int FUNC5 (struct ubifs_info*,int,void*,int,int) ; 
 int FUNC6 (struct ubifs_info*,void*,int,int,int) ; 

int FUNC7(struct ubifs_info *c, void *buf, int len, int lnum,
			  int offs, int hmac_offs)
{
	int err, buf_len = FUNC0(len, c->min_io_size);

	FUNC1("LEB %d:%d, %s, length %d (aligned %d)",
	       lnum, offs, FUNC2(((struct ubifs_ch *)buf)->node_type), len,
	       buf_len);
	FUNC3(c, lnum >= 0 && lnum < c->leb_cnt && offs >= 0);
	FUNC3(c, offs % c->min_io_size == 0 && offs < c->leb_size);
	FUNC3(c, !c->ro_media && !c->ro_mount);
	FUNC3(c, !c->space_fixup);

	if (c->ro_error)
		return -EROFS;

	err = FUNC6(c, buf, len, hmac_offs, 1);
	if (err)
		return err;

	err = FUNC5(c, lnum, buf, offs, buf_len);
	if (err)
		FUNC4(c, buf);

	return err;
}