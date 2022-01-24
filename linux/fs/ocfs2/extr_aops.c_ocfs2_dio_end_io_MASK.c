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
struct kiocb {int /*<<< orphan*/  ki_filp; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,long long) ; 
 int FUNC3 (struct inode*,void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC6 (struct kiocb*) ; 
 int FUNC7 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int) ; 

__attribute__((used)) static int FUNC9(struct kiocb *iocb,
			    loff_t offset,
			    ssize_t bytes,
			    void *private)
{
	struct inode *inode = FUNC1(iocb->ki_filp);
	int level;
	int ret = 0;

	/* this io's submitter should not have unlocked this before we could */
	FUNC0(!FUNC6(iocb));

	if (bytes <= 0)
		FUNC2(ML_ERROR, "Direct IO failed, bytes = %lld",
				 (long long)bytes);
	if (private) {
		if (bytes > 0)
			ret = FUNC3(inode, private, offset,
						     bytes);
		else
			FUNC4(inode, private);
	}

	FUNC5(iocb);

	level = FUNC7(iocb);
	FUNC8(inode, level);
	return ret;
}