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
struct fib6_nh {int dummy; } ;
struct fib6_info {int /*<<< orphan*/  fib6_ref; int /*<<< orphan*/  fib6_siblings; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fib6_info* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

struct fib6_info *FUNC3(gfp_t gfp_flags, bool with_fib6_nh)
{
	struct fib6_info *f6i;
	size_t sz = sizeof(*f6i);

	if (with_fib6_nh)
		sz += sizeof(struct fib6_nh);

	f6i = FUNC1(sz, gfp_flags);
	if (!f6i)
		return NULL;

	/* fib6_siblings is a union with nh_list, so this initializes both */
	FUNC0(&f6i->fib6_siblings);
	FUNC2(&f6i->fib6_ref, 1);

	return f6i;
}