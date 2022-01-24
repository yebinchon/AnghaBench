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
 unsigned long INT_MAX ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (void const*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned int FUNC3 (char const*) ; 

__attribute__((used)) static unsigned int FUNC4(const char *name, const void *ns)
{
	unsigned long hash = FUNC1(ns);
	unsigned int len = FUNC3(name);
	while (len--)
		hash = FUNC2(*name++, hash);
	hash = FUNC0(hash);
	hash &= 0x7fffffffU;
	/* Reserve hash numbers 0, 1 and INT_MAX for magic directory entries */
	if (hash < 2)
		hash += 2;
	if (hash >= INT_MAX)
		hash = INT_MAX - 1;
	return hash;
}