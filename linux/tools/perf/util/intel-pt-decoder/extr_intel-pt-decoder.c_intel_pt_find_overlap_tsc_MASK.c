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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 unsigned char* FUNC0 (unsigned char*,unsigned char*,size_t) ; 
 unsigned char* FUNC1 (unsigned char*,size_t) ; 
 scalar_t__ FUNC2 (unsigned char*,size_t,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned char *FUNC5(unsigned char *buf_a,
						size_t len_a,
						unsigned char *buf_b,
						size_t len_b, bool *consecutive)
{
	uint64_t tsc_a, tsc_b;
	unsigned char *p;
	size_t len, rem_a, rem_b;

	p = FUNC1(buf_a, len_a);
	if (!p)
		return buf_b; /* No PSB in buf_a => no overlap */

	len = len_a - (p - buf_a);
	if (!FUNC2(p, len, &tsc_a, &rem_a)) {
		/* The last PSB+ in buf_a is incomplete, so go back one more */
		len_a -= len;
		p = FUNC1(buf_a, len_a);
		if (!p)
			return buf_b; /* No full PSB+ => assume no overlap */
		len = len_a - (p - buf_a);
		if (!FUNC2(p, len, &tsc_a, &rem_a))
			return buf_b; /* No TSC in buf_a => assume no overlap */
	}

	while (1) {
		/* Ignore PSB+ with no TSC */
		if (FUNC2(buf_b, len_b, &tsc_b, &rem_b)) {
			int cmp = FUNC4(tsc_a, tsc_b);

			/* Same TSC, so buffers are consecutive */
			if (!cmp && rem_b >= rem_a) {
				unsigned char *start;

				*consecutive = true;
				start = buf_b + len_b - (rem_b - rem_a);
				return FUNC0(start, buf_a, len_a);
			}
			if (cmp < 0)
				return buf_b; /* tsc_a < tsc_b => no overlap */
		}

		if (!FUNC3(&buf_b, &len_b))
			return buf_b + len_b; /* No PSB in buf_b => no data */
	}
}