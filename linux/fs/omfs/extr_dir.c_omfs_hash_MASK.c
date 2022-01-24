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
 int FUNC0 (char const) ; 

__attribute__((used)) static int FUNC1(const char *name, int namelen, int mod)
{
	int i, hash = 0;
	for (i = 0; i < namelen; i++)
		hash ^= FUNC0(name[i]) << (i % 24);
	return hash % mod;
}