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
 unsigned int ESCAPE_HEX ; 
 unsigned int ESCAPE_NP ; 
 unsigned int ESCAPE_NULL ; 
 unsigned int ESCAPE_OCTAL ; 
 unsigned int ESCAPE_SPACE ; 
 unsigned int ESCAPE_SPECIAL ; 
 scalar_t__ FUNC0 (unsigned char,char**,char*) ; 
 scalar_t__ FUNC1 (unsigned char,char**,char*) ; 
 scalar_t__ FUNC2 (unsigned char,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,char**,char*) ; 
 scalar_t__ FUNC4 (unsigned char,char**,char*) ; 
 scalar_t__ FUNC5 (unsigned char,char**,char*) ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (char const*,unsigned char) ; 

int FUNC8(const char *src, size_t isz, char *dst, size_t osz,
		      unsigned int flags, const char *only)
{
	char *p = dst;
	char *end = p + osz;
	bool is_dict = only && *only;

	while (isz--) {
		unsigned char c = *src++;

		/*
		 * Apply rules in the following sequence:
		 *	- the character is printable, when @flags has
		 *	  %ESCAPE_NP bit set
		 *	- the @only string is supplied and does not contain a
		 *	  character under question
		 *	- the character doesn't fall into a class of symbols
		 *	  defined by given @flags
		 * In these cases we just pass through a character to the
		 * output buffer.
		 */
		if ((flags & ESCAPE_NP && FUNC6(c)) ||
		    (is_dict && !FUNC7(only, c))) {
			/* do nothing */
		} else {
			if (flags & ESCAPE_SPACE && FUNC4(c, &p, end))
				continue;

			if (flags & ESCAPE_SPECIAL && FUNC5(c, &p, end))
				continue;

			if (flags & ESCAPE_NULL && FUNC1(c, &p, end))
				continue;

			/* ESCAPE_OCTAL and ESCAPE_HEX always go last */
			if (flags & ESCAPE_OCTAL && FUNC2(c, &p, end))
				continue;

			if (flags & ESCAPE_HEX && FUNC0(c, &p, end))
				continue;
		}

		FUNC3(c, &p, end);
	}

	return p - dst;
}