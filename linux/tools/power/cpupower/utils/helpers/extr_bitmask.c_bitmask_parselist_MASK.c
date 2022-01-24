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
struct bitmask {unsigned int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bitmask*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bitmask*) ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (int,char,char*) ; 
 int FUNC4 (char const*,char*,unsigned int*,char*) ; 

int FUNC5(const char *buf, struct bitmask *bmp)
{
	const char *p, *q;

	FUNC1(bmp);

	q = buf;
	while (p = q, q = FUNC2(q, ','), p) {
		unsigned int a;		/* begin of range */
		unsigned int b;		/* end of range */
		unsigned int s;		/* stride */
		const char *c1, *c2;	/* next tokens after '-' or ',' */
		char nextc;		/* char after sscanf %u match */
		int sret;		/* sscanf return (number of matches) */

		sret = FUNC4(p, "%u%c", &a, &nextc);
		if (!FUNC3(sret, nextc, ",-"))
			goto err;
		b = a;
		s = 1;
		c1 = FUNC2(p, '-');
		c2 = FUNC2(p, ',');
		if (c1 != NULL && (c2 == NULL || c1 < c2)) {
			sret = FUNC4(c1, "%u%c", &b, &nextc);
			if (!FUNC3(sret, nextc, ",:"))
				goto err;
			c1 = FUNC2(c1, ':');
			if (c1 != NULL && (c2 == NULL || c1 < c2)) {
				sret = FUNC4(c1, "%u%c", &s, &nextc);
				if (!FUNC3(sret, nextc, ","))
					goto err;
			}
		}
		if (!(a <= b))
			goto err;
		if (b >= bmp->size)
			goto err;
		while (a <= b) {
			FUNC0(bmp, a, 1);
			a += s;
		}
	}
	return 0;
err:
	FUNC1(bmp);
	return -1;
}