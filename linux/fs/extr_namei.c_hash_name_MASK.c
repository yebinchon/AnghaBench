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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC2 (void const*) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static inline u64 FUNC4(const void *salt, const char *name)
{
	unsigned long hash = FUNC2(salt);
	unsigned long len = 0, c;

	c = (unsigned char)*name;
	do {
		len++;
		hash = FUNC3(c, hash);
		c = (unsigned char)name[len];
	} while (c && c != '/');
	return FUNC1(FUNC0(hash), len);
}