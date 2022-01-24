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
 int FUNC0 (char const*,char*,int) ; 
 int FUNC1 (char const*,char*,int,char const*,int) ; 

int FUNC2(const char *source, char *dest,
				  int originalSize,
				  const char *dictStart, int dictSize)
{
	if (dictSize == 0 || dictStart + dictSize == dest)
		return FUNC0(source, dest, originalSize);

	return FUNC1(source, dest, originalSize,
		dictStart, dictSize);
}