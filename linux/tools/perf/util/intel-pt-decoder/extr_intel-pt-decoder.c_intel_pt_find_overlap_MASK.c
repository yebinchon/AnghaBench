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

/* Variables and functions */
 unsigned char* FUNC0 (unsigned char*,unsigned char*,size_t) ; 
 unsigned char* FUNC1 (unsigned char*,size_t,unsigned char*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,size_t*) ; 
 unsigned char* FUNC4 (unsigned char*,size_t,unsigned char*,size_t) ; 

unsigned char *FUNC5(unsigned char *buf_a, size_t len_a,
				     unsigned char *buf_b, size_t len_b,
				     bool have_tsc, bool *consecutive)
{
	unsigned char *found;

	/* Buffer 'b' must start at PSB so throw away everything before that */
	if (!FUNC2(&buf_b, &len_b))
		return buf_b + len_b; /* No PSB */

	if (!FUNC2(&buf_a, &len_a))
		return buf_b; /* No overlap */

	if (have_tsc) {
		found = FUNC1(buf_a, len_a, buf_b, len_b,
						  consecutive);
		if (found)
			return found;
	}

	/*
	 * Buffer 'b' cannot end within buffer 'a' so, for comparison purposes,
	 * we can ignore the first part of buffer 'a'.
	 */
	while (len_b < len_a) {
		if (!FUNC3(&buf_a, &len_a))
			return buf_b; /* No overlap */
	}

	/* Now len_b >= len_a */
	while (1) {
		/* Potential overlap so check the bytes */
		found = FUNC4(buf_a, len_a, buf_b, len_a);
		if (found) {
			*consecutive = true;
			return FUNC0(buf_b + len_a, buf_a, len_a);
		}

		/* Try again at next PSB in buffer 'a' */
		if (!FUNC3(&buf_a, &len_a))
			return buf_b; /* No overlap */
	}
}