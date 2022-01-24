#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct orangefs_read_options {int /*<<< orphan*/  blksiz; } ;
struct kiocb {TYPE_4__* ki_filp; } ;
struct iov_iter {int /*<<< orphan*/  count; } ;
typedef  int ssize_t ;
struct TYPE_7__ {struct orangefs_read_options* private_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_rwsem; } ;
struct TYPE_5__ {int /*<<< orphan*/  reads; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (TYPE_4__*) ; 
 int FUNC2 (struct kiocb*,struct iov_iter*) ; 
 struct orangefs_read_options* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*) ; 
 TYPE_1__ orangefs_stats ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct kiocb *iocb,
    struct iov_iter *iter)
{
	int ret;
	struct orangefs_read_options *ro;

	orangefs_stats.reads++;

	/*
	 * Remember how they set "count" in read(2) or pread(2) or whatever -
	 * users can use count as a knob to control orangefs io size and later
	 * we can try to help them fill as many pages as possible in readpage.
	 */
	if (!iocb->ki_filp->private_data) {
		iocb->ki_filp->private_data = FUNC3(sizeof *ro, GFP_KERNEL);
		if (!iocb->ki_filp->private_data)
			return(ENOMEM);
		ro = iocb->ki_filp->private_data;
		ro->blksiz = iter->count;
	}

	FUNC0(&FUNC1(iocb->ki_filp)->i_rwsem);
	ret = FUNC4(FUNC1(iocb->ki_filp));
	if (ret)
		goto out;

	ret = FUNC2(iocb, iter);
out:
	FUNC5(&FUNC1(iocb->ki_filp)->i_rwsem);
	return ret;
}