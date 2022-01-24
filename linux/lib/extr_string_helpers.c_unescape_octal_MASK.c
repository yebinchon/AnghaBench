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
typedef  int u8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 

__attribute__((used)) static bool FUNC1(char **src, char **dst)
{
	char *p = *dst, *q = *src;
	u8 num;

	if (FUNC0(*q) == 0)
		return false;

	num = (*q++) & 7;
	while (num < 32 && FUNC0(*q) && (q - *src < 3)) {
		num <<= 3;
		num += (*q++) & 7;
	}
	*p = num;
	*dst += 1;
	*src = q;
	return true;
}