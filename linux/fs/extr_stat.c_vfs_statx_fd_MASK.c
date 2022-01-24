#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct kstat {int dummy; } ;
struct fd {TYPE_1__* file; } ;
struct TYPE_2__ {int /*<<< orphan*/  f_path; } ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 unsigned int KSTAT_QUERY_FLAGS ; 
 struct fd FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct fd) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct kstat*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC3(unsigned int fd, struct kstat *stat,
		 u32 request_mask, unsigned int query_flags)
{
	struct fd f;
	int error = -EBADF;

	if (query_flags & ~KSTAT_QUERY_FLAGS)
		return -EINVAL;

	f = FUNC0(fd);
	if (f.file) {
		error = FUNC2(&f.file->f_path, stat,
				    request_mask, query_flags);
		FUNC1(f);
	}
	return error;
}