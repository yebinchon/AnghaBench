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
 int BPF_OBJ_NAME_LEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(char *dst, const char *src)
{
	const char *end = src + BPF_OBJ_NAME_LEN;

	FUNC1(dst, 0, BPF_OBJ_NAME_LEN);
	/* Copy all isalnum(), '_' and '.' chars. */
	while (src < end && *src) {
		if (!FUNC0(*src) &&
		    *src != '_' && *src != '.')
			return -EINVAL;
		*dst++ = *src++;
	}

	/* No '\0' found in BPF_OBJ_NAME_LEN number of bytes */
	if (src == end)
		return -EINVAL;

	return 0;
}