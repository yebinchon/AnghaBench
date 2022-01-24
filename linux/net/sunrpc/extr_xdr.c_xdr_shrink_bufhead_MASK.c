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
struct xdr_buf {unsigned int page_len; scalar_t__ buflen; scalar_t__ len; scalar_t__ page_base; int /*<<< orphan*/  pages; struct kvec* head; struct kvec* tail; } ;
struct kvec {size_t iov_len; scalar_t__ iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,size_t) ; 

__attribute__((used)) static unsigned int
FUNC6(struct xdr_buf *buf, size_t len)
{
	struct kvec *head, *tail;
	size_t copy, offs;
	unsigned int pglen = buf->page_len;
	unsigned int result;

	result = 0;
	tail = buf->tail;
	head = buf->head;

	FUNC0(len > head->iov_len);
	if (len > head->iov_len)
		len = head->iov_len;

	/* Shift the tail first */
	if (tail->iov_len != 0) {
		if (tail->iov_len > len) {
			copy = tail->iov_len - len;
			FUNC5((char *)tail->iov_base + len,
					tail->iov_base, copy);
			result += copy;
		}
		/* Copy from the inlined pages into the tail */
		copy = len;
		if (copy > pglen)
			copy = pglen;
		offs = len - copy;
		if (offs >= tail->iov_len)
			copy = 0;
		else if (copy > tail->iov_len - offs)
			copy = tail->iov_len - offs;
		if (copy != 0) {
			FUNC1((char *)tail->iov_base + offs,
					buf->pages,
					buf->page_base + pglen + offs - len,
					copy);
			result += copy;
		}
		/* Do we also need to copy data from the head into the tail ? */
		if (len > pglen) {
			offs = copy = len - pglen;
			if (copy > tail->iov_len)
				copy = tail->iov_len;
			FUNC4(tail->iov_base,
					(char *)head->iov_base +
					head->iov_len - offs,
					copy);
			result += copy;
		}
	}
	/* Now handle pages */
	if (pglen != 0) {
		if (pglen > len)
			FUNC3(buf->pages,
					buf->page_base + len,
					buf->page_base,
					pglen - len);
		copy = len;
		if (len > pglen)
			copy = pglen;
		FUNC2(buf->pages, buf->page_base,
				(char *)head->iov_base + head->iov_len - len,
				copy);
		result += copy;
	}
	head->iov_len -= len;
	buf->buflen -= len;
	/* Have we truncated the message? */
	if (buf->len > buf->buflen)
		buf->len = buf->buflen;

	return result;
}