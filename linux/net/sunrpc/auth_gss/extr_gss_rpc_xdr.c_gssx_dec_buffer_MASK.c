#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct xdr_stream {int dummy; } ;
struct TYPE_3__ {int len; scalar_t__ data; } ;
typedef  TYPE_1__ gssx_buffer ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC5(struct xdr_stream *xdr,
			   gssx_buffer *buf)
{
	u32 length;
	__be32 *p;

	p = FUNC4(xdr, 4);
	if (FUNC3(p == NULL))
		return -ENOSPC;

	length = FUNC0(p);
	p = FUNC4(xdr, length);
	if (FUNC3(p == NULL))
		return -ENOSPC;

	if (buf->len == 0) {
		/* we intentionally are not interested in this buffer */
		return 0;
	}
	if (length > buf->len)
		return -ENOSPC;

	if (!buf->data) {
		buf->data = FUNC1(p, length, GFP_KERNEL);
		if (!buf->data)
			return -ENOMEM;
	} else {
		FUNC2(buf->data, p, length);
	}
	buf->len = length;
	return 0;
}