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
struct xdr_buf {unsigned int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LOCAL_BUF_LEN ; 
 unsigned int FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_buf*,unsigned int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_buf*,unsigned int,char*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct xdr_buf *buf, unsigned int shift)
{
	char head[LOCAL_BUF_LEN];
	char tmp[LOCAL_BUF_LEN];
	unsigned int this_len, i;

	FUNC0(shift > LOCAL_BUF_LEN);

	FUNC2(buf, 0, head, shift);
	for (i = 0; i + shift < buf->len; i += LOCAL_BUF_LEN) {
		this_len = FUNC1(LOCAL_BUF_LEN, buf->len - (i + shift));
		FUNC2(buf, i+shift, tmp, this_len);
		FUNC3(buf, i, tmp, this_len);
	}
	FUNC3(buf, buf->len - shift, head, shift);
}