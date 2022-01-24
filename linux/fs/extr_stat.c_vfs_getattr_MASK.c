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
typedef  int /*<<< orphan*/  u32 ;
struct path {int dummy; } ;
struct kstat {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct path const*) ; 
 int FUNC1 (struct path const*,struct kstat*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC2(const struct path *path, struct kstat *stat,
		u32 request_mask, unsigned int query_flags)
{
	int retval;

	retval = FUNC0(path);
	if (retval)
		return retval;
	return FUNC1(path, stat, request_mask, query_flags);
}