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
typedef  int /*<<< orphan*/  size ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (struct feat_fd*,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC2(struct feat_fd *ff, unsigned long *set, u64 size)
{
	u64 *p = (u64 *) set;
	int i, ret;

	ret = FUNC1(ff, &size, sizeof(size));
	if (ret < 0)
		return ret;

	for (i = 0; (u64) i < FUNC0(size); i++) {
		ret = FUNC1(ff, p + i, sizeof(*p));
		if (ret < 0)
			return ret;
	}

	return 0;
}