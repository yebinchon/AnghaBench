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
 int /*<<< orphan*/  LOCAL_BUF_LEN ; 
 int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_buf*,int) ; 

__attribute__((used)) static void FUNC2(struct xdr_buf *buf, unsigned int shift)
{
	int shifted = 0;
	int this_shift;

	shift %= buf->len;
	while (shifted < shift) {
		this_shift = FUNC0(shift - shifted, LOCAL_BUF_LEN);
		FUNC1(buf, this_shift);
		shifted += this_shift;
	}
}