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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int unicode_t ;
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  enum utf16_endian { ____Placeholder_utf16_endian } utf16_endian ;

/* Variables and functions */
 int EINVAL ; 
 int PLANE_SIZE ; 
 int SURROGATE_BITS ; 
 int SURROGATE_LOW ; 
 int SURROGATE_PAIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int const*,int,int*) ; 

int FUNC2(const u8 *s, int inlen, enum utf16_endian endian,
		wchar_t *pwcs, int maxout)
{
	u16 *op;
	int size;
	unicode_t u;

	op = pwcs;
	while (inlen > 0 && maxout > 0 && *s) {
		if (*s & 0x80) {
			size = FUNC1(s, inlen, &u);
			if (size < 0)
				return -EINVAL;
			s += size;
			inlen -= size;

			if (u >= PLANE_SIZE) {
				if (maxout < 2)
					break;
				u -= PLANE_SIZE;
				FUNC0(op++, SURROGATE_PAIR |
						((u >> 10) & SURROGATE_BITS),
						endian);
				FUNC0(op++, SURROGATE_PAIR |
						SURROGATE_LOW |
						(u & SURROGATE_BITS),
						endian);
				maxout -= 2;
			} else {
				FUNC0(op++, u, endian);
				maxout--;
			}
		} else {
			FUNC0(op++, *s++, endian);
			inlen--;
			maxout--;
		}
	}
	return op - pwcs;
}