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
typedef  scalar_t__ u64 ;
struct feat_fd {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int ENOMEM ; 
 unsigned long* FUNC1 (scalar_t__) ; 
 int FUNC2 (struct feat_fd*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*) ; 

__attribute__((used)) static int FUNC4(struct feat_fd *ff, unsigned long **pset, u64 *psize)
{
	unsigned long *set;
	u64 size, *p;
	int i, ret;

	ret = FUNC2(ff, &size);
	if (ret)
		return ret;

	set = FUNC1(size);
	if (!set)
		return -ENOMEM;

	p = (u64 *) set;

	for (i = 0; (u64) i < FUNC0(size); i++) {
		ret = FUNC2(ff, p + i);
		if (ret < 0) {
			FUNC3(set);
			return ret;
		}
	}

	*pset  = set;
	*psize = size;
	return 0;
}