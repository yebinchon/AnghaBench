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
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int,int) ; 
 int FUNC1 (int,char*,int) ; 

char *FUNC2(int err, char *dst, int len)
{
	int ret = FUNC1(err < 0 ? -err : err, dst, len);
	if (ret)
		FUNC0(dst, len, "ERROR: strerror_r(%d)=%d", err, ret);
	return dst;
}