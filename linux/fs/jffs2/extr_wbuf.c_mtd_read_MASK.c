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
typedef  int /*<<< orphan*/  u_char ;
struct jffs2_sb_info {scalar_t__ wbuf_len; scalar_t__ wbuf_ofs; scalar_t__ wbuf; int /*<<< orphan*/  wbuf_sem; int /*<<< orphan*/  wbuf_pagesize; int /*<<< orphan*/  mtd; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EBADMSG ; 
 int EUCLEAN ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,size_t,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct jffs2_sb_info *c, loff_t ofs, size_t len, size_t *retlen, u_char *buf)
{
	loff_t	orbf = 0, owbf = 0, lwbf = 0;
	int	ret;

	if (!FUNC2(c))
		return FUNC4(c->mtd, ofs, len, retlen, buf);

	/* Read flash */
	FUNC1(&c->wbuf_sem);
	ret = FUNC4(c->mtd, ofs, len, retlen, buf);

	if ( (ret == -EBADMSG || ret == -EUCLEAN) && (*retlen == len) ) {
		if (ret == -EBADMSG)
			FUNC5("mtd->read(0x%zx bytes from 0x%llx) returned ECC error\n",
				len, ofs);
		/*
		 * We have the raw data without ECC correction in the buffer,
		 * maybe we are lucky and all data or parts are correct. We
		 * check the node.  If data are corrupted node check will sort
		 * it out.  We keep this block, it will fail on write or erase
		 * and the we mark it bad. Or should we do that now? But we
		 * should give him a chance.  Maybe we had a system crash or
		 * power loss before the ecc write or a erase was completed.
		 * So we return success. :)
		 */
		ret = 0;
	}

	/* if no writebuffer available or write buffer empty, return */
	if (!c->wbuf_pagesize || !c->wbuf_len)
		goto exit;

	/* if we read in a different block, return */
	if (FUNC0(ofs) != FUNC0(c->wbuf_ofs))
		goto exit;

	if (ofs >= c->wbuf_ofs) {
		owbf = (ofs - c->wbuf_ofs);	/* offset in write buffer */
		if (owbf > c->wbuf_len)		/* is read beyond write buffer ? */
			goto exit;
		lwbf = c->wbuf_len - owbf;	/* number of bytes to copy */
		if (lwbf > len)
			lwbf = len;
	} else {
		orbf = (c->wbuf_ofs - ofs);	/* offset in read buffer */
		if (orbf > len)			/* is write beyond write buffer ? */
			goto exit;
		lwbf = len - orbf;		/* number of bytes to copy */
		if (lwbf > c->wbuf_len)
			lwbf = c->wbuf_len;
	}
	if (lwbf > 0)
		FUNC3(buf+orbf,c->wbuf+owbf,lwbf);

exit:
	FUNC6(&c->wbuf_sem);
	return ret;
}