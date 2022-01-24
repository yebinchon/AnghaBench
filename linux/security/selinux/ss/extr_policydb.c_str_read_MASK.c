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
typedef  int u32 ;
typedef  int gfp_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int __GFP_NOWARN ; 
 char* FUNC0 (int,int) ; 
 int FUNC1 (char*,void*,int) ; 

__attribute__((used)) static int FUNC2(char **strp, gfp_t flags, void *fp, u32 len)
{
	int rc;
	char *str;

	if ((len == 0) || (len == (u32)-1))
		return -EINVAL;

	str = FUNC0(len + 1, flags | __GFP_NOWARN);
	if (!str)
		return -ENOMEM;

	/* it's expected the caller should free the str */
	*strp = str;

	rc = FUNC1(str, fp, len);
	if (rc)
		return rc;

	str[len] = '\0';
	return 0;
}