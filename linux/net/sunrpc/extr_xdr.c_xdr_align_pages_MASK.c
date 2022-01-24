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
struct xdr_stream {unsigned int nwords; struct xdr_buf* buf; } ;
struct xdr_buf {unsigned int len; unsigned int page_len; struct kvec* head; } ;
struct kvec {unsigned int iov_len; } ;

/* Variables and functions */
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (struct xdr_buf*,unsigned int) ; 
 unsigned int FUNC3 (struct xdr_buf*,unsigned int) ; 
 unsigned int FUNC4 (struct xdr_stream*) ; 

__attribute__((used)) static unsigned int FUNC5(struct xdr_stream *xdr, unsigned int len)
{
	struct xdr_buf *buf = xdr->buf;
	struct kvec *iov;
	unsigned int nwords = FUNC0(len);
	unsigned int cur = FUNC4(xdr);
	unsigned int copied, offset;

	if (xdr->nwords == 0)
		return 0;

	/* Realign pages to current pointer position */
	iov = buf->head;
	if (iov->iov_len > cur) {
		offset = iov->iov_len - cur;
		copied = FUNC2(buf, offset);
		FUNC1(xdr, offset, copied);
		xdr->nwords = FUNC0(buf->len - cur);
	}

	if (nwords > xdr->nwords) {
		nwords = xdr->nwords;
		len = nwords << 2;
	}
	if (buf->page_len <= len)
		len = buf->page_len;
	else if (nwords < xdr->nwords) {
		/* Truncate page data and move it into the tail */
		offset = buf->page_len - len;
		copied = FUNC3(buf, offset);
		FUNC1(xdr, offset, copied);
		xdr->nwords = FUNC0(buf->len - cur);
	}
	return len;
}