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
struct kasan_access_info {int /*<<< orphan*/  access_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (struct kasan_access_info*) ; 
 char const* FUNC2 (struct kasan_access_info*) ; 

const char *FUNC3(struct kasan_access_info *info)
{
	if (FUNC0(info->access_addr))
		return FUNC1(info);
	return FUNC2(info);
}