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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  dbuf ;

/* Variables and functions */
 int IN6PTON_COLON_MASK ; 
 int IN6PTON_DELIM ; 
 int IN6PTON_DIGIT ; 
 int IN6PTON_DOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const,int) ; 

int FUNC3(const char *src, int srclen,
	     u8 *dst,
	     int delim, const char **end)
{
	const char *s;
	u8 *d;
	u8 dbuf[4];
	int ret = 0;
	int i;
	int w = 0;

	if (srclen < 0)
		srclen = FUNC1(src);
	s = src;
	d = dbuf;
	i = 0;
	while (1) {
		int c;
		c = FUNC2(srclen > 0 ? *s : '\0', delim);
		if (!(c & (IN6PTON_DIGIT | IN6PTON_DOT | IN6PTON_DELIM | IN6PTON_COLON_MASK))) {
			goto out;
		}
		if (c & (IN6PTON_DOT | IN6PTON_DELIM | IN6PTON_COLON_MASK)) {
			if (w == 0)
				goto out;
			*d++ = w & 0xff;
			w = 0;
			i++;
			if (c & (IN6PTON_DELIM | IN6PTON_COLON_MASK)) {
				if (i != 4)
					goto out;
				break;
			}
			goto cont;
		}
		w = (w * 10) + c;
		if ((w & 0xffff) > 255) {
			goto out;
		}
cont:
		if (i >= 4)
			goto out;
		s++;
		srclen--;
	}
	ret = 1;
	FUNC0(dst, dbuf, sizeof(dbuf));
out:
	if (end)
		*end = s;
	return ret;
}