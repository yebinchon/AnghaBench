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
 int errno ; 
 int FUNC0 (char*,char*,int) ; 

int FUNC1(char *file, char *buf, int size)
{
	int n;

	n = FUNC0(file, buf, size);
	if (n < 0)
		return -errno;
	if (n < size)
		buf[n] = '\0';
	return n;
}