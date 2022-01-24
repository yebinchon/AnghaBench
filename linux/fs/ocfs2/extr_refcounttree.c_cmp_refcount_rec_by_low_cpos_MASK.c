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
typedef  scalar_t__ u32 ;
struct ocfs2_refcount_rec {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ocfs2_refcount_rec const*) ; 

__attribute__((used)) static int FUNC1(const void *a, const void *b)
{
	const struct ocfs2_refcount_rec *l = a, *r = b;
	u32 l_cpos = FUNC0(l);
	u32 r_cpos = FUNC0(r);

	if (l_cpos > r_cpos)
		return 1;
	if (l_cpos < r_cpos)
		return -1;
	return 0;
}