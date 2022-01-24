#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xdr_netobj {unsigned int len; scalar_t__ data; } ;
struct xdr_buf {unsigned int buflen; unsigned int len; TYPE_2__* head; TYPE_1__* tail; scalar_t__ page_len; } ;
struct TYPE_4__ {unsigned int iov_len; scalar_t__ iov_base; } ;
struct TYPE_3__ {scalar_t__ iov_base; unsigned int iov_len; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_buf*,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC1 (struct xdr_buf*,struct xdr_buf*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (struct xdr_buf*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_buf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_buf*,unsigned int) ; 

int FUNC5(struct xdr_buf *buf, struct xdr_netobj *mic, unsigned int offset)
{
	struct xdr_buf subbuf;
	unsigned int boundary;

	if (FUNC2(buf, offset, &mic->len))
		return -EFAULT;
	offset += 4;

	/* Is the mic partially in the head? */
	boundary = buf->head[0].iov_len;
	if (offset < boundary && (offset + mic->len) > boundary)
		FUNC3(buf, boundary - offset);

	/* Is the mic partially in the pages? */
	boundary += buf->page_len;
	if (offset < boundary && (offset + mic->len) > boundary)
		FUNC4(buf, boundary - offset);

	if (FUNC1(buf, &subbuf, offset, mic->len))
		return -EFAULT;

	/* Is the mic contained entirely in the head? */
	mic->data = subbuf.head[0].iov_base;
	if (subbuf.head[0].iov_len == mic->len)
		return 0;
	/* ..or is the mic contained entirely in the tail? */
	mic->data = subbuf.tail[0].iov_base;
	if (subbuf.tail[0].iov_len == mic->len)
		return 0;

	/* Find a contiguous area in @buf to hold all of @mic */
	if (mic->len > buf->buflen - buf->len)
		return -ENOMEM;
	if (buf->tail[0].iov_len != 0)
		mic->data = buf->tail[0].iov_base + buf->tail[0].iov_len;
	else
		mic->data = buf->head[0].iov_base + buf->head[0].iov_len;
	FUNC0(&subbuf, mic->data, mic->len);
	return 0;
}