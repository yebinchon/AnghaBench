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
 int /*<<< orphan*/  FUNC0 (unsigned char,char**,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 

int FUNC4(const char *src, size_t isz, char *dst,
					size_t osz)
{
	char *p = dst;
	char *end = p + osz;

	while (isz--) {
		unsigned char c = *src++;

		if (!FUNC3(c) || !FUNC2(c) || c == '"' || c == '\\')
			FUNC0(c, &p, end);
		else
			FUNC1(c, &p, end);
	}

	return p - dst;
}