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
struct ubifs_wbuf {scalar_t__ lnum; int offs; int used; int avail; int size; void* buf; int (* sync_callback ) (struct ubifs_info*,scalar_t__,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  lock; scalar_t__ next_ino; int /*<<< orphan*/  jhead; int /*<<< orphan*/  io_mutex; struct ubifs_info* c; } ;
struct ubifs_info {scalar_t__ leb_cnt; int min_io_size; int leb_size; int max_write_size; int max_write_shift; scalar_t__ ro_error; int /*<<< orphan*/  space_fixup; int /*<<< orphan*/  ro_mount; int /*<<< orphan*/  ro_media; } ;
struct ubifs_ch {int /*<<< orphan*/  node_type; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOSPC ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_wbuf*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,scalar_t__,int,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,struct ubifs_wbuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct ubifs_info*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ubifs_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_info*,void*) ; 
 int /*<<< orphan*/  FUNC15 (struct ubifs_info*,char*,int,scalar_t__,int,int) ; 
 int FUNC16 (struct ubifs_info*,scalar_t__,void*,int,int) ; 

int FUNC17(struct ubifs_wbuf *wbuf, void *buf, int len)
{
	struct ubifs_info *c = wbuf->c;
	int err, written, n, aligned_len = FUNC0(len, 8);

	FUNC2("%d bytes (%s) to jhead %s wbuf at LEB %d:%d", len,
	       FUNC4(((struct ubifs_ch *)buf)->node_type),
	       FUNC3(wbuf->jhead), wbuf->lnum, wbuf->offs + wbuf->used);
	FUNC12(c, len > 0 && wbuf->lnum >= 0 && wbuf->lnum < c->leb_cnt);
	FUNC12(c, wbuf->offs >= 0 && wbuf->offs % c->min_io_size == 0);
	FUNC12(c, !(wbuf->offs & 7) && wbuf->offs <= c->leb_size);
	FUNC12(c, wbuf->avail > 0 && wbuf->avail <= wbuf->size);
	FUNC12(c, wbuf->size >= c->min_io_size);
	FUNC12(c, wbuf->size <= c->max_write_size);
	FUNC12(c, wbuf->size % c->min_io_size == 0);
	FUNC12(c, FUNC7(&wbuf->io_mutex));
	FUNC12(c, !c->ro_media && !c->ro_mount);
	FUNC12(c, !c->space_fixup);
	if (c->leb_size - wbuf->offs >= c->max_write_size)
		FUNC12(c, !((wbuf->offs + wbuf->size) % c->max_write_size));

	if (c->leb_size - wbuf->offs - wbuf->used < aligned_len) {
		err = -ENOSPC;
		goto out;
	}

	FUNC1(wbuf);

	if (c->ro_error)
		return -EROFS;

	if (aligned_len <= wbuf->avail) {
		/*
		 * The node is not very large and fits entirely within
		 * write-buffer.
		 */
		FUNC6(wbuf->buf + wbuf->used, buf, len);

		if (aligned_len == wbuf->avail) {
			FUNC2("flush jhead %s wbuf to LEB %d:%d",
			       FUNC3(wbuf->jhead), wbuf->lnum, wbuf->offs);
			err = FUNC16(c, wbuf->lnum, wbuf->buf,
					      wbuf->offs, wbuf->size);
			if (err)
				goto out;

			FUNC9(&wbuf->lock);
			wbuf->offs += wbuf->size;
			if (c->leb_size - wbuf->offs >= c->max_write_size)
				wbuf->size = c->max_write_size;
			else
				wbuf->size = c->leb_size - wbuf->offs;
			wbuf->avail = wbuf->size;
			wbuf->used = 0;
			wbuf->next_ino = 0;
			FUNC10(&wbuf->lock);
		} else {
			FUNC9(&wbuf->lock);
			wbuf->avail -= aligned_len;
			wbuf->used += aligned_len;
			FUNC10(&wbuf->lock);
		}

		goto exit;
	}

	written = 0;

	if (wbuf->used) {
		/*
		 * The node is large enough and does not fit entirely within
		 * current available space. We have to fill and flush
		 * write-buffer and switch to the next max. write unit.
		 */
		FUNC2("flush jhead %s wbuf to LEB %d:%d",
		       FUNC3(wbuf->jhead), wbuf->lnum, wbuf->offs);
		FUNC6(wbuf->buf + wbuf->used, buf, wbuf->avail);
		err = FUNC16(c, wbuf->lnum, wbuf->buf, wbuf->offs,
				      wbuf->size);
		if (err)
			goto out;

		wbuf->offs += wbuf->size;
		len -= wbuf->avail;
		aligned_len -= wbuf->avail;
		written += wbuf->avail;
	} else if (wbuf->offs & (c->max_write_size - 1)) {
		/*
		 * The write-buffer offset is not aligned to
		 * @c->max_write_size and @wbuf->size is less than
		 * @c->max_write_size. Write @wbuf->size bytes to make sure the
		 * following writes are done in optimal @c->max_write_size
		 * chunks.
		 */
		FUNC2("write %d bytes to LEB %d:%d",
		       wbuf->size, wbuf->lnum, wbuf->offs);
		err = FUNC16(c, wbuf->lnum, buf, wbuf->offs,
				      wbuf->size);
		if (err)
			goto out;

		wbuf->offs += wbuf->size;
		len -= wbuf->size;
		aligned_len -= wbuf->size;
		written += wbuf->size;
	}

	/*
	 * The remaining data may take more whole max. write units, so write the
	 * remains multiple to max. write unit size directly to the flash media.
	 * We align node length to 8-byte boundary because we anyway flash wbuf
	 * if the remaining space is less than 8 bytes.
	 */
	n = aligned_len >> c->max_write_shift;
	if (n) {
		n <<= c->max_write_shift;
		FUNC2("write %d bytes to LEB %d:%d", n, wbuf->lnum,
		       wbuf->offs);
		err = FUNC16(c, wbuf->lnum, buf + written,
				      wbuf->offs, n);
		if (err)
			goto out;
		wbuf->offs += n;
		aligned_len -= n;
		len -= n;
		written += n;
	}

	FUNC9(&wbuf->lock);
	if (aligned_len)
		/*
		 * And now we have what's left and what does not take whole
		 * max. write unit, so write it to the write-buffer and we are
		 * done.
		 */
		FUNC6(wbuf->buf, buf + written, len);

	if (c->leb_size - wbuf->offs >= c->max_write_size)
		wbuf->size = c->max_write_size;
	else
		wbuf->size = c->leb_size - wbuf->offs;
	wbuf->avail = wbuf->size - aligned_len;
	wbuf->used = aligned_len;
	wbuf->next_ino = 0;
	FUNC10(&wbuf->lock);

exit:
	if (wbuf->sync_callback) {
		int free = c->leb_size - wbuf->offs - wbuf->used;

		err = wbuf->sync_callback(c, wbuf->lnum, free, 0);
		if (err)
			goto out;
	}

	if (wbuf->used)
		FUNC8(c, wbuf);

	return 0;

out:
	FUNC15(c, "cannot write %d bytes to LEB %d:%d, error %d",
		  len, wbuf->lnum, wbuf->offs, err);
	FUNC14(c, buf);
	FUNC5();
	FUNC13(c, wbuf->lnum);
	return err;
}