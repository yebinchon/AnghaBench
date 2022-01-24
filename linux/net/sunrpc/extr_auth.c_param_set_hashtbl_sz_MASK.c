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
struct kernel_param {scalar_t__ arg; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int MAX_HASHTABLE_BITS ; 
 unsigned int FUNC0 (unsigned long) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC2(const char *val, const struct kernel_param *kp)
{
	unsigned long num;
	unsigned int nbits;
	int ret;

	if (!val)
		goto out_inval;
	ret = FUNC1(val, 0, &num);
	if (ret)
		goto out_inval;
	nbits = FUNC0(num - 1);
	if (nbits > MAX_HASHTABLE_BITS || nbits < 2)
		goto out_inval;
	*(unsigned int *)kp->arg = nbits;
	return 0;
out_inval:
	return -EINVAL;
}