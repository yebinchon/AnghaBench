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
 unsigned int UNESCAPE_HEX ; 
 unsigned int UNESCAPE_OCTAL ; 
 unsigned int UNESCAPE_SPACE ; 
 unsigned int UNESCAPE_SPECIAL ; 
 scalar_t__ FUNC0 (char**,char**) ; 
 scalar_t__ FUNC1 (char**,char**) ; 
 scalar_t__ FUNC2 (char**,char**) ; 
 scalar_t__ FUNC3 (char**,char**) ; 

int FUNC4(char *src, char *dst, size_t size, unsigned int flags)
{
	char *out = dst;

	while (*src && --size) {
		if (src[0] == '\\' && src[1] != '\0' && size > 1) {
			src++;
			size--;

			if (flags & UNESCAPE_SPACE &&
					FUNC2(&src, &out))
				continue;

			if (flags & UNESCAPE_OCTAL &&
					FUNC1(&src, &out))
				continue;

			if (flags & UNESCAPE_HEX &&
					FUNC0(&src, &out))
				continue;

			if (flags & UNESCAPE_SPECIAL &&
					FUNC3(&src, &out))
				continue;

			*out++ = '\\';
		}
		*out++ = *src++;
	}
	*out = '\0';

	return out - dst;
}