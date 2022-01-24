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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 char* FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 

char *FUNC2(const char *s, size_t len, gfp_t gfp)
{
	char *buf;

	if (!s)
		return NULL;

	buf = FUNC0(len + 1, gfp);
	if (buf) {
		FUNC1(buf, s, len);
		buf[len] = '\0';
	}
	return buf;
}