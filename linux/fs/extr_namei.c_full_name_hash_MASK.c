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
 unsigned int FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (void const*) ; 
 unsigned long FUNC2 (unsigned char,unsigned long) ; 

unsigned int FUNC3(const void *salt, const char *name, unsigned int len)
{
	unsigned long hash = FUNC1(salt);
	while (len--)
		hash = FUNC2((unsigned char)*name++, hash);
	return FUNC0(hash);
}