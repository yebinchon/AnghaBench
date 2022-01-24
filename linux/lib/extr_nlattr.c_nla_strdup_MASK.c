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
struct nlattr {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 char* FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 char* FUNC2 (struct nlattr const*) ; 
 size_t FUNC3 (struct nlattr const*) ; 

char *FUNC4(const struct nlattr *nla, gfp_t flags)
{
	size_t srclen = FUNC3(nla);
	char *src = FUNC2(nla), *dst;

	if (srclen > 0 && src[srclen - 1] == '\0')
		srclen--;

	dst = FUNC0(srclen + 1, flags);
	if (dst != NULL) {
		FUNC1(dst, src, srclen);
		dst[srclen] = '\0';
	}
	return dst;
}