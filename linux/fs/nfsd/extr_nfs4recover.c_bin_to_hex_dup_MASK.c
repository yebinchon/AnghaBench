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
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC2(const unsigned char *src, int srclen)
{
	int i;
	char *buf, *hex;

	/* +1 for terminating NULL */
	buf = FUNC0((srclen * 2) + 1, GFP_KERNEL);
	if (!buf)
		return buf;

	hex = buf;
	for (i = 0; i < srclen; i++) {
		FUNC1(hex, "%2.2x", *src++);
		hex += 2;
	}
	return buf;
}