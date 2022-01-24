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
struct iov_iter {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 long EINVAL ; 
 unsigned int SPLICE_F_ALL ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct iov_iter*) ; 
 scalar_t__ FUNC1 (struct iov_iter*) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 long FUNC3 (struct file*,struct iov_iter*,unsigned int) ; 
 long FUNC4 (struct file*,struct iov_iter*,unsigned int) ; 

__attribute__((used)) static long FUNC5(struct file *f, struct iov_iter *iter, unsigned int flags)
{
	if (FUNC2(flags & ~SPLICE_F_ALL))
		return -EINVAL;

	if (!FUNC0(iter))
		return 0;

	if (FUNC1(iter) == WRITE)
		return FUNC3(f, iter, flags);
	else
		return FUNC4(f, iter, flags);
}