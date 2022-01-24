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
typedef  scalar_t__ u16 ;
struct hfsplus_unistr {int /*<<< orphan*/ * unicode; int /*<<< orphan*/  const length; } ;
typedef  int /*<<< orphan*/  hfsplus_unichr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

int FUNC2(const struct hfsplus_unistr *s1,
		       const struct hfsplus_unistr *s2)
{
	u16 len1, len2, c1, c2;
	const hfsplus_unichr *p1, *p2;

	len1 = FUNC0(s1->length);
	len2 = FUNC0(s2->length);
	p1 = s1->unicode;
	p2 = s2->unicode;

	while (1) {
		c1 = c2 = 0;

		while (len1 && !c1) {
			c1 = FUNC1(FUNC0(*p1));
			p1++;
			len1--;
		}
		while (len2 && !c2) {
			c2 = FUNC1(FUNC0(*p2));
			p2++;
			len2--;
		}

		if (c1 != c2)
			return (c1 < c2) ? -1 : 1;
		if (!c1 && !c2)
			return 0;
	}
}