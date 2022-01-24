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

/* Variables and functions */
 int MAP_HUGETLB ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static inline int FUNC2(const char *filename, u32 flags)
{
	return flags & MAP_HUGETLB ||
	       !FUNC0(filename, "//anon") ||
	       !FUNC1(filename, "/dev/zero", sizeof("/dev/zero") - 1) ||
	       !FUNC1(filename, "/anon_hugepage", sizeof("/anon_hugepage") - 1);
}