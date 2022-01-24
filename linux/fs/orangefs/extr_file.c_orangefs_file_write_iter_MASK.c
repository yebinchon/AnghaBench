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
struct kiocb {scalar_t__ ki_pos; int /*<<< orphan*/  ki_filp; } ;
struct iov_iter {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  writes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ orangefs_stats ; 

__attribute__((used)) static ssize_t FUNC4(struct kiocb *iocb,
    struct iov_iter *iter)
{
	int ret;
	orangefs_stats.writes++;

	if (iocb->ki_pos > FUNC2(FUNC0(iocb->ki_filp))) {
		ret = FUNC3(FUNC0(iocb->ki_filp));
		if (ret)
			return ret;
	}

	ret = FUNC1(iocb, iter);
	return ret;
}